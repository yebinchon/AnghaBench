
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct neighbour {int nud_state; int timer; } ;


 int dump_stack () ;
 int mod_timer (int *,unsigned long) ;
 int neigh_hold (struct neighbour*) ;
 int printk (char*,int ) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void neigh_add_timer(struct neighbour *n, unsigned long when)
{
 neigh_hold(n);
 if (unlikely(mod_timer(&n->timer, when))) {
  printk("NEIGH: BUG, double timer add, state is %x\n",
         n->nud_state);
  dump_stack();
 }
}
