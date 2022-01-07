
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct flow_dissector_key_mpls {scalar_t__ mpls_bos; scalar_t__ mpls_label; scalar_t__ mpls_tc; scalar_t__ mpls_ttl; } ;


 int TCA_FLOWER_KEY_MPLS_BOS ;
 int TCA_FLOWER_KEY_MPLS_LABEL ;
 int TCA_FLOWER_KEY_MPLS_TC ;
 int TCA_FLOWER_KEY_MPLS_TTL ;
 int memchr_inv (struct flow_dissector_key_mpls*,int ,int) ;
 int nla_put_u32 (struct sk_buff*,int ,scalar_t__) ;
 int nla_put_u8 (struct sk_buff*,int ,scalar_t__) ;

__attribute__((used)) static int fl_dump_key_mpls(struct sk_buff *skb,
       struct flow_dissector_key_mpls *mpls_key,
       struct flow_dissector_key_mpls *mpls_mask)
{
 int err;

 if (!memchr_inv(mpls_mask, 0, sizeof(*mpls_mask)))
  return 0;
 if (mpls_mask->mpls_ttl) {
  err = nla_put_u8(skb, TCA_FLOWER_KEY_MPLS_TTL,
     mpls_key->mpls_ttl);
  if (err)
   return err;
 }
 if (mpls_mask->mpls_tc) {
  err = nla_put_u8(skb, TCA_FLOWER_KEY_MPLS_TC,
     mpls_key->mpls_tc);
  if (err)
   return err;
 }
 if (mpls_mask->mpls_label) {
  err = nla_put_u32(skb, TCA_FLOWER_KEY_MPLS_LABEL,
      mpls_key->mpls_label);
  if (err)
   return err;
 }
 if (mpls_mask->mpls_bos) {
  err = nla_put_u8(skb, TCA_FLOWER_KEY_MPLS_BOS,
     mpls_key->mpls_bos);
  if (err)
   return err;
 }
 return 0;
}
