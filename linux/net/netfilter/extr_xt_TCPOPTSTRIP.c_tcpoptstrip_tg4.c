
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_action_param {int dummy; } ;
struct sk_buff {int dummy; } ;


 int ip_hdrlen (struct sk_buff*) ;
 unsigned int tcpoptstrip_mangle_packet (struct sk_buff*,struct xt_action_param const*,int ) ;

__attribute__((used)) static unsigned int
tcpoptstrip_tg4(struct sk_buff *skb, const struct xt_action_param *par)
{
 return tcpoptstrip_mangle_packet(skb, par, ip_hdrlen(skb));
}
