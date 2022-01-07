
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int csum; } ;
struct icmpv6_msg {int type; scalar_t__ offset; struct sk_buff* skb; } ;
typedef int __wsum ;


 int ICMPV6_INFOMSG_MASK ;
 int csum_block_add (int ,int ,int) ;
 int nf_ct_attach (struct sk_buff*,struct sk_buff*) ;
 int skb_copy_and_csum_bits (struct sk_buff*,scalar_t__,char*,int,int ) ;

__attribute__((used)) static int icmpv6_getfrag(void *from, char *to, int offset, int len, int odd, struct sk_buff *skb)
{
 struct icmpv6_msg *msg = (struct icmpv6_msg *) from;
 struct sk_buff *org_skb = msg->skb;
 __wsum csum = 0;

 csum = skb_copy_and_csum_bits(org_skb, msg->offset + offset,
          to, len, csum);
 skb->csum = csum_block_add(skb->csum, csum, odd);
 if (!(msg->type & ICMPV6_INFOMSG_MASK))
  nf_ct_attach(skb, org_skb);
 return 0;
}
