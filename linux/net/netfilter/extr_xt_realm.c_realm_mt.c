
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_realm_info {int id; int mask; int invert; } ;
struct xt_action_param {struct xt_realm_info* matchinfo; } ;
struct sk_buff {int dummy; } ;
struct dst_entry {int tclassid; } ;


 struct dst_entry* skb_dst (struct sk_buff const*) ;

__attribute__((used)) static bool
realm_mt(const struct sk_buff *skb, struct xt_action_param *par)
{
 const struct xt_realm_info *info = par->matchinfo;
 const struct dst_entry *dst = skb_dst(skb);

 return (info->id == (dst->tclassid & info->mask)) ^ info->invert;
}
