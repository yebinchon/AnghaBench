
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_action_param {int matchinfo; } ;
struct sk_buff {int dummy; } ;


 int socket_match (struct sk_buff const*,struct xt_action_param*,int ) ;

__attribute__((used)) static bool
socket_mt4_v1_v2_v3(const struct sk_buff *skb, struct xt_action_param *par)
{
 return socket_match(skb, par, par->matchinfo);
}
