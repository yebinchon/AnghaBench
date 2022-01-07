
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cobalt_vars {int dropping; int count; void* drop_next; void* blue_timer; scalar_t__ p_drop; } ;
struct cobalt_params {scalar_t__ target; scalar_t__ p_inc; } ;
typedef void* ktime_t ;


 int ktime_sub (void*,void*) ;
 scalar_t__ ktime_to_ns (int ) ;

__attribute__((used)) static bool cobalt_queue_full(struct cobalt_vars *vars,
         struct cobalt_params *p,
         ktime_t now)
{
 bool up = 0;

 if (ktime_to_ns(ktime_sub(now, vars->blue_timer)) > p->target) {
  up = !vars->p_drop;
  vars->p_drop += p->p_inc;
  if (vars->p_drop < p->p_inc)
   vars->p_drop = ~0;
  vars->blue_timer = now;
 }
 vars->dropping = 1;
 vars->drop_next = now;
 if (!vars->count)
  vars->count = 1;

 return up;
}
