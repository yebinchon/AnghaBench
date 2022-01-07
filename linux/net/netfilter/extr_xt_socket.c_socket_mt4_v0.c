
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_socket_mtinfo1 {int flags; } ;
struct xt_action_param {int dummy; } ;
struct sk_buff {int dummy; } ;


 int socket_match (struct sk_buff const*,struct xt_action_param*,struct xt_socket_mtinfo1*) ;

__attribute__((used)) static bool
socket_mt4_v0(const struct sk_buff *skb, struct xt_action_param *par)
{
 static struct xt_socket_mtinfo1 xt_info_v0 = {
  .flags = 0,
 };

 return socket_match(skb, par, &xt_info_v0);
}
