
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_base {unsigned long clk; struct hlist_head* vectors; int pending_map; } ;
struct hlist_head {int dummy; } ;


 unsigned long LVL_CLK_MASK ;
 unsigned long LVL_CLK_SHIFT ;
 int LVL_DEPTH ;
 unsigned long LVL_MASK ;
 int LVL_SIZE ;
 scalar_t__ __test_and_clear_bit (unsigned int,int ) ;
 int hlist_move_list (struct hlist_head*,int ) ;

__attribute__((used)) static int __collect_expired_timers(struct timer_base *base,
        struct hlist_head *heads)
{
 unsigned long clk = base->clk;
 struct hlist_head *vec;
 int i, levels = 0;
 unsigned int idx;

 for (i = 0; i < LVL_DEPTH; i++) {
  idx = (clk & LVL_MASK) + i * LVL_SIZE;

  if (__test_and_clear_bit(idx, base->pending_map)) {
   vec = base->vectors + idx;
   hlist_move_list(vec, heads++);
   levels++;
  }

  if (clk & LVL_CLK_MASK)
   break;

  clk >>= LVL_CLK_SHIFT;
 }
 return levels;
}
