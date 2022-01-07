
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int ipv6_mc_check_exthdrs (struct sk_buff*) ;
 int ipv6_mc_check_icmpv6 (struct sk_buff*) ;
 int ipv6_mc_check_ip6hdr (struct sk_buff*) ;
 int ipv6_mc_check_mld_msg (struct sk_buff*) ;

int ipv6_mc_check_mld(struct sk_buff *skb)
{
 int ret;

 ret = ipv6_mc_check_ip6hdr(skb);
 if (ret < 0)
  return ret;

 ret = ipv6_mc_check_exthdrs(skb);
 if (ret < 0)
  return ret;

 ret = ipv6_mc_check_icmpv6(skb);
 if (ret < 0)
  return ret;

 return ipv6_mc_check_mld_msg(skb);
}
