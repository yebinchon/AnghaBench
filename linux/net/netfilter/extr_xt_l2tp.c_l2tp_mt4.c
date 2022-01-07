
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct xt_action_param {int thoff; } ;
struct sk_buff {int dummy; } ;
struct iphdr {int protocol; } ;




 struct iphdr* ip_hdr (struct sk_buff const*) ;
 int l2tp_ip_mt (struct sk_buff const*,struct xt_action_param*,int ) ;
 int l2tp_udp_mt (struct sk_buff const*,struct xt_action_param*,int ) ;

__attribute__((used)) static bool l2tp_mt4(const struct sk_buff *skb, struct xt_action_param *par)
{
 struct iphdr *iph = ip_hdr(skb);
 u8 ipproto = iph->protocol;


 switch (ipproto) {
 case 128:
  return l2tp_udp_mt(skb, par, par->thoff);
 case 129:
  return l2tp_ip_mt(skb, par, par->thoff);
 }

 return 0;
}
