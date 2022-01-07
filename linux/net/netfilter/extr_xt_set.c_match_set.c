
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_action_param {int dummy; } ;
struct sk_buff {int dummy; } ;
struct ip_set_adt_opt {int dummy; } ;
typedef int ip_set_id_t ;


 scalar_t__ ip_set_test (int ,struct sk_buff const*,struct xt_action_param const*,struct ip_set_adt_opt*) ;

__attribute__((used)) static inline int
match_set(ip_set_id_t index, const struct sk_buff *skb,
   const struct xt_action_param *par,
   struct ip_set_adt_opt *opt, int inv)
{
 if (ip_set_test(index, skb, par, opt))
  inv = !inv;
 return inv;
}
