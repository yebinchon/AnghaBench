
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct ipv6hdr {int dummy; } ;


 int EINVAL ;




 int WARN_ON_ONCE (int) ;
 int lowpan_fetch_skb (struct sk_buff*,int*,int) ;
 int lowpan_iphc_tf_set_dscp (struct ipv6hdr*,int*) ;
 int lowpan_iphc_tf_set_ecn (struct ipv6hdr*,int*) ;
 int lowpan_iphc_tf_set_lbl (struct ipv6hdr*,int*) ;

__attribute__((used)) static int lowpan_iphc_tf_decompress(struct sk_buff *skb, struct ipv6hdr *hdr,
         u8 val)
{
 u8 tf[4];


 switch (val) {
 case 131:

  if (lowpan_fetch_skb(skb, tf, 4))
   return -EINVAL;







  lowpan_iphc_tf_set_ecn(hdr, tf);
  lowpan_iphc_tf_set_dscp(hdr, tf);
  lowpan_iphc_tf_set_lbl(hdr, &tf[1]);
  break;
 case 130:

  if (lowpan_fetch_skb(skb, tf, 3))
   return -EINVAL;







  lowpan_iphc_tf_set_ecn(hdr, tf);
  lowpan_iphc_tf_set_lbl(hdr, &tf[0]);
  break;
 case 129:

  if (lowpan_fetch_skb(skb, tf, 1))
   return -EINVAL;






  lowpan_iphc_tf_set_ecn(hdr, tf);
  lowpan_iphc_tf_set_dscp(hdr, tf);
  break;
 case 128:

  break;
 default:
  WARN_ON_ONCE(1);
  return -EINVAL;
 }

 return 0;
}
