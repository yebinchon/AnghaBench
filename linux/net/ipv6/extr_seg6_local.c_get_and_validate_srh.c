
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct ipv6_sr_hdr {scalar_t__ segments_left; } ;


 struct ipv6_sr_hdr* get_srh (struct sk_buff*) ;
 int seg6_hmac_validate_skb (struct sk_buff*) ;

__attribute__((used)) static struct ipv6_sr_hdr *get_and_validate_srh(struct sk_buff *skb)
{
 struct ipv6_sr_hdr *srh;

 srh = get_srh(skb);
 if (!srh)
  return ((void*)0);

 if (srh->segments_left == 0)
  return ((void*)0);






 return srh;
}
