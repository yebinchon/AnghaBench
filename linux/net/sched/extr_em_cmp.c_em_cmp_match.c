
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u32 ;
struct tcf_pkt_info {int dummy; } ;
struct tcf_ematch {scalar_t__ data; } ;
struct tcf_em_cmp {int off; int align; int mask; int opnd; unsigned char val; int layer; } ;
struct sk_buff {int dummy; } ;
 unsigned char be16_to_cpu (unsigned char) ;
 unsigned char be32_to_cpu (unsigned char) ;
 int cmp_needs_transformation (struct tcf_em_cmp*) ;
 unsigned char get_unaligned_be16 (unsigned char*) ;
 unsigned char get_unaligned_be32 (unsigned char*) ;
 unsigned char* tcf_get_base_ptr (struct sk_buff*,int ) ;
 int tcf_valid_offset (struct sk_buff*,unsigned char*,int) ;

__attribute__((used)) static int em_cmp_match(struct sk_buff *skb, struct tcf_ematch *em,
   struct tcf_pkt_info *info)
{
 struct tcf_em_cmp *cmp = (struct tcf_em_cmp *) em->data;
 unsigned char *ptr = tcf_get_base_ptr(skb, cmp->layer) + cmp->off;
 u32 val = 0;

 if (!tcf_valid_offset(skb, ptr, cmp->align))
  return 0;

 switch (cmp->align) {
 case 131:
  val = *ptr;
  break;

 case 133:
  val = get_unaligned_be16(ptr);

  if (cmp_needs_transformation(cmp))
   val = be16_to_cpu(val);
  break;

 case 132:



  val = get_unaligned_be32(ptr);

  if (cmp_needs_transformation(cmp))
   val = be32_to_cpu(val);
  break;

 default:
  return 0;
 }

 if (cmp->mask)
  val &= cmp->mask;

 switch (cmp->opnd) {
 case 130:
  return val == cmp->val;
 case 128:
  return val < cmp->val;
 case 129:
  return val > cmp->val;
 }

 return 0;
}
