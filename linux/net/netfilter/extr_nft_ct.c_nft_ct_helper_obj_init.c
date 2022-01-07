
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct nft_object {int dummy; } ;
struct nft_ctx {int family; int net; } ;
struct nft_ct_helper_obj {struct nf_conntrack_helper* helper6; struct nf_conntrack_helper* helper4; int l4proto; } ;
struct nf_conntrack_helper {int dummy; } ;
typedef int name ;


 int EAFNOSUPPORT ;
 int EINVAL ;
 int ENOENT ;





 size_t NFTA_CT_HELPER_L3PROTO ;
 size_t NFTA_CT_HELPER_L4PROTO ;
 size_t NFTA_CT_HELPER_NAME ;
 int NF_CT_HELPER_NAME_LEN ;
 int nf_conntrack_helper_put (struct nf_conntrack_helper*) ;
 struct nf_conntrack_helper* nf_conntrack_helper_try_module_get (char*,int const,int ) ;
 int nf_ct_netns_get (int ,int const) ;
 struct nft_ct_helper_obj* nft_obj_data (struct nft_object*) ;
 int nla_get_be16 (struct nlattr const* const) ;
 int nla_get_u8 (struct nlattr const* const) ;
 int nla_strlcpy (char*,struct nlattr const* const,int) ;
 int ntohs (int ) ;

__attribute__((used)) static int nft_ct_helper_obj_init(const struct nft_ctx *ctx,
      const struct nlattr * const tb[],
      struct nft_object *obj)
{
 struct nft_ct_helper_obj *priv = nft_obj_data(obj);
 struct nf_conntrack_helper *help4, *help6;
 char name[NF_CT_HELPER_NAME_LEN];
 int family = ctx->family;
 int err;

 if (!tb[NFTA_CT_HELPER_NAME] || !tb[NFTA_CT_HELPER_L4PROTO])
  return -EINVAL;

 priv->l4proto = nla_get_u8(tb[NFTA_CT_HELPER_L4PROTO]);
 if (!priv->l4proto)
  return -ENOENT;

 nla_strlcpy(name, tb[NFTA_CT_HELPER_NAME], sizeof(name));

 if (tb[NFTA_CT_HELPER_L3PROTO])
  family = ntohs(nla_get_be16(tb[NFTA_CT_HELPER_L3PROTO]));

 help4 = ((void*)0);
 help6 = ((void*)0);

 switch (family) {
 case 130:
  if (ctx->family == 129)
   return -EINVAL;

  help4 = nf_conntrack_helper_try_module_get(name, family,
          priv->l4proto);
  break;
 case 129:
  if (ctx->family == 130)
   return -EINVAL;

  help6 = nf_conntrack_helper_try_module_get(name, family,
          priv->l4proto);
  break;
 case 128:
 case 132:
 case 131:
  help4 = nf_conntrack_helper_try_module_get(name, 130,
          priv->l4proto);
  help6 = nf_conntrack_helper_try_module_get(name, 129,
          priv->l4proto);
  break;
 default:
  return -EAFNOSUPPORT;
 }


 if (!help4 && !help6)
  return -ENOENT;

 priv->helper4 = help4;
 priv->helper6 = help6;

 err = nf_ct_netns_get(ctx->net, ctx->family);
 if (err < 0)
  goto err_put_helper;

 return 0;

err_put_helper:
 if (priv->helper4)
  nf_conntrack_helper_put(priv->helper4);
 if (priv->helper6)
  nf_conntrack_helper_put(priv->helper6);
 return err;
}
