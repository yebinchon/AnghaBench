
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
typedef enum pedit_header_type { ____Placeholder_pedit_header_type } pedit_header_type ;


 int EINVAL ;






 int skb_mac_header_was_set (struct sk_buff*) ;
 int skb_mac_offset (struct sk_buff*) ;
 int skb_network_offset (struct sk_buff*) ;
 int skb_transport_header_was_set (struct sk_buff*) ;
 int skb_transport_offset (struct sk_buff*) ;

__attribute__((used)) static int pedit_skb_hdr_offset(struct sk_buff *skb,
    enum pedit_header_type htype, int *hoffset)
{
 int ret = -EINVAL;

 switch (htype) {
 case 133:
  if (skb_mac_header_was_set(skb)) {
   *hoffset = skb_mac_offset(skb);
   ret = 0;
  }
  break;
 case 130:
 case 132:
 case 131:
  *hoffset = skb_network_offset(skb);
  ret = 0;
  break;
 case 129:
 case 128:
  if (skb_transport_header_was_set(skb)) {
   *hoffset = skb_transport_offset(skb);
   ret = 0;
  }
  break;
 default:
  ret = -EINVAL;
  break;
 }

 return ret;
}
