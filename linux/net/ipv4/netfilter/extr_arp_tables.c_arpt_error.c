
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_action_param {scalar_t__ targinfo; } ;
struct sk_buff {int dummy; } ;


 unsigned int NF_DROP ;
 int net_err_ratelimited (char*,char const*) ;

__attribute__((used)) static unsigned int
arpt_error(struct sk_buff *skb, const struct xt_action_param *par)
{
 net_err_ratelimited("arp_tables: error: '%s'\n",
       (const char *)par->targinfo);

 return NF_DROP;
}
