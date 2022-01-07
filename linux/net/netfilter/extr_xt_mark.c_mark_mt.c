
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_mark_mtinfo1 {int mask; int mark; int invert; } ;
struct xt_action_param {struct xt_mark_mtinfo1* matchinfo; } ;
struct sk_buff {int mark; } ;



__attribute__((used)) static bool
mark_mt(const struct sk_buff *skb, struct xt_action_param *par)
{
 const struct xt_mark_mtinfo1 *info = par->matchinfo;

 return ((skb->mark & info->mask) == info->mark) ^ info->invert;
}
