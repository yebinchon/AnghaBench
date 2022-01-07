
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cobalt_vars {scalar_t__ p_drop; int dropping; int rec_inv_sqrt; int drop_next; scalar_t__ count; int blue_timer; } ;
struct cobalt_params {scalar_t__ target; scalar_t__ p_dec; int interval; } ;
typedef int ktime_t ;


 int cobalt_control (int ,int ,int ) ;
 int cobalt_invsqrt (struct cobalt_vars*) ;
 int ktime_sub (int ,int ) ;
 scalar_t__ ktime_to_ns (int ) ;

__attribute__((used)) static bool cobalt_queue_empty(struct cobalt_vars *vars,
          struct cobalt_params *p,
          ktime_t now)
{
 bool down = 0;

 if (vars->p_drop &&
     ktime_to_ns(ktime_sub(now, vars->blue_timer)) > p->target) {
  if (vars->p_drop < p->p_dec)
   vars->p_drop = 0;
  else
   vars->p_drop -= p->p_dec;
  vars->blue_timer = now;
  down = !vars->p_drop;
 }
 vars->dropping = 0;

 if (vars->count && ktime_to_ns(ktime_sub(now, vars->drop_next)) >= 0) {
  vars->count--;
  cobalt_invsqrt(vars);
  vars->drop_next = cobalt_control(vars->drop_next,
       p->interval,
       vars->rec_inv_sqrt);
 }

 return down;
}
