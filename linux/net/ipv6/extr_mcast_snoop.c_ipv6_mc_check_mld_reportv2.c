
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct mld2_report {int dummy; } ;


 int EINVAL ;
 scalar_t__ ipv6_mc_may_pull (struct sk_buff*,unsigned int) ;
 unsigned int skb_transport_offset (struct sk_buff*) ;

__attribute__((used)) static int ipv6_mc_check_mld_reportv2(struct sk_buff *skb)
{
 unsigned int len = skb_transport_offset(skb);

 len += sizeof(struct mld2_report);

 return ipv6_mc_may_pull(skb, len) ? 0 : -EINVAL;
}
