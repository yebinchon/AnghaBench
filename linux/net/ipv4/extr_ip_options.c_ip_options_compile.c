
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net {int dummy; } ;
struct ip_options {int dummy; } ;
typedef int __be32 ;


 int ICMP_PARAMETERPROB ;
 int __ip_options_compile (struct net*,struct ip_options*,struct sk_buff*,int *) ;
 int icmp_send (struct sk_buff*,int ,int ,int ) ;

int ip_options_compile(struct net *net,
         struct ip_options *opt, struct sk_buff *skb)
{
 int ret;
 __be32 info;

 ret = __ip_options_compile(net, opt, skb, &info);
 if (ret != 0 && skb)
  icmp_send(skb, ICMP_PARAMETERPROB, 0, info);
 return ret;
}
