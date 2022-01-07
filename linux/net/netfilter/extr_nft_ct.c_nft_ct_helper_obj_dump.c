
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sk_buff {int dummy; } ;
struct nft_object {int dummy; } ;
struct nft_ct_helper_obj {int l4proto; struct nf_conntrack_helper* helper4; struct nf_conntrack_helper* helper6; } ;
struct nf_conntrack_helper {int name; } ;


 int NFPROTO_INET ;
 int NFPROTO_IPV4 ;
 int NFPROTO_IPV6 ;
 int NFTA_CT_HELPER_L3PROTO ;
 int NFTA_CT_HELPER_L4PROTO ;
 int NFTA_CT_HELPER_NAME ;
 int htons (int ) ;
 struct nft_ct_helper_obj* nft_obj_data (struct nft_object*) ;
 scalar_t__ nla_put_be16 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_string (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u8 (struct sk_buff*,int ,int ) ;

__attribute__((used)) static int nft_ct_helper_obj_dump(struct sk_buff *skb,
      struct nft_object *obj, bool reset)
{
 const struct nft_ct_helper_obj *priv = nft_obj_data(obj);
 const struct nf_conntrack_helper *helper;
 u16 family;

 if (priv->helper4 && priv->helper6) {
  family = NFPROTO_INET;
  helper = priv->helper4;
 } else if (priv->helper6) {
  family = NFPROTO_IPV6;
  helper = priv->helper6;
 } else {
  family = NFPROTO_IPV4;
  helper = priv->helper4;
 }

 if (nla_put_string(skb, NFTA_CT_HELPER_NAME, helper->name))
  return -1;

 if (nla_put_u8(skb, NFTA_CT_HELPER_L4PROTO, priv->l4proto))
  return -1;

 if (nla_put_be16(skb, NFTA_CT_HELPER_L3PROTO, htons(family)))
  return -1;

 return 0;
}
