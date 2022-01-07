
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct TYPE_3__ {int val; } ;
struct nft_set_elem {void* priv; TYPE_1__ key; } ;
struct nft_set {scalar_t__ klen; TYPE_2__* ops; } ;
struct nft_data_desc {scalar_t__ type; scalar_t__ len; } ;
struct nft_ctx {int portid; int net; int seq; } ;
struct TYPE_4__ {void* (* get ) (int ,struct nft_set*,struct nft_set_elem*,int ) ;} ;


 int EAGAIN ;
 int EINVAL ;
 int ENOBUFS ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 scalar_t__ IS_ERR (void*) ;
 int MSG_DONTWAIT ;
 size_t NFTA_SET_ELEM_FLAGS ;
 size_t NFTA_SET_ELEM_KEY ;
 int NFTA_SET_ELEM_MAX ;
 scalar_t__ NFT_DATA_VALUE ;
 int NFT_MSG_NEWSETELEM ;
 int NLMSG_GOODSIZE ;
 int PTR_ERR (void*) ;
 int kfree_skb (struct sk_buff*) ;
 int nf_tables_fill_setelem_info (struct sk_buff*,struct nft_ctx*,int ,int ,int ,int ,struct nft_set*,struct nft_set_elem*) ;
 int nfnetlink_unicast (struct sk_buff*,int ,int ,int ) ;
 int nft_data_init (struct nft_ctx*,int *,int,struct nft_data_desc*,struct nlattr*) ;
 int nft_set_elem_policy ;
 int nft_setelem_parse_flags (struct nft_set*,struct nlattr*,int *) ;
 int nla_parse_nested_deprecated (struct nlattr**,int ,struct nlattr const*,int ,int *) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 void* stub1 (int ,struct nft_set*,struct nft_set_elem*,int ) ;

__attribute__((used)) static int nft_get_set_elem(struct nft_ctx *ctx, struct nft_set *set,
       const struct nlattr *attr)
{
 struct nlattr *nla[NFTA_SET_ELEM_MAX + 1];
 struct nft_data_desc desc;
 struct nft_set_elem elem;
 struct sk_buff *skb;
 uint32_t flags = 0;
 void *priv;
 int err;

 err = nla_parse_nested_deprecated(nla, NFTA_SET_ELEM_MAX, attr,
       nft_set_elem_policy, ((void*)0));
 if (err < 0)
  return err;

 if (!nla[NFTA_SET_ELEM_KEY])
  return -EINVAL;

 err = nft_setelem_parse_flags(set, nla[NFTA_SET_ELEM_FLAGS], &flags);
 if (err < 0)
  return err;

 err = nft_data_init(ctx, &elem.key.val, sizeof(elem.key), &desc,
       nla[NFTA_SET_ELEM_KEY]);
 if (err < 0)
  return err;

 err = -EINVAL;
 if (desc.type != NFT_DATA_VALUE || desc.len != set->klen)
  return err;

 priv = set->ops->get(ctx->net, set, &elem, flags);
 if (IS_ERR(priv))
  return PTR_ERR(priv);

 elem.priv = priv;

 err = -ENOMEM;
 skb = nlmsg_new(NLMSG_GOODSIZE, GFP_ATOMIC);
 if (skb == ((void*)0))
  goto err1;

 err = nf_tables_fill_setelem_info(skb, ctx, ctx->seq, ctx->portid,
       NFT_MSG_NEWSETELEM, 0, set, &elem);
 if (err < 0)
  goto err2;

 err = nfnetlink_unicast(skb, ctx->net, ctx->portid, MSG_DONTWAIT);

 if (err < 0)
  goto err1;

 return 0;
err2:
 kfree_skb(skb);
err1:

 return err == -EAGAIN ? -ENOBUFS : err;
}
