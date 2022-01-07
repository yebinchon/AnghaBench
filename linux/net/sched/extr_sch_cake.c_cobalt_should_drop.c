
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct sk_buff {int dummy; } ;
struct cobalt_vars {int count; int ecn_marked; int dropping; scalar_t__ p_drop; void* drop_next; int rec_inv_sqrt; } ;
struct cobalt_params {int target; int mtu_time; int interval; } ;
typedef void* ktime_t ;


 int INET_ECN_set_ce (struct sk_buff*) ;
 void* cobalt_control (void*,int ,int ) ;
 void* cobalt_get_enqueue_time (struct sk_buff*) ;
 int cobalt_invsqrt (struct cobalt_vars*) ;
 void* ktime_add_ns (void*,int ) ;
 void* ktime_sub (void*,void*) ;
 scalar_t__ ktime_to_ns (void*) ;
 scalar_t__ prandom_u32 () ;

__attribute__((used)) static bool cobalt_should_drop(struct cobalt_vars *vars,
          struct cobalt_params *p,
          ktime_t now,
          struct sk_buff *skb,
          u32 bulk_flows)
{
 bool next_due, over_target, drop = 0;
 ktime_t schedule;
 u64 sojourn;
 sojourn = ktime_to_ns(ktime_sub(now, cobalt_get_enqueue_time(skb)));
 schedule = ktime_sub(now, vars->drop_next);
 over_target = sojourn > p->target &&
        sojourn > p->mtu_time * bulk_flows * 2 &&
        sojourn > p->mtu_time * 4;
 next_due = vars->count && ktime_to_ns(schedule) >= 0;

 vars->ecn_marked = 0;

 if (over_target) {
  if (!vars->dropping) {
   vars->dropping = 1;
   vars->drop_next = cobalt_control(now,
        p->interval,
        vars->rec_inv_sqrt);
  }
  if (!vars->count)
   vars->count = 1;
 } else if (vars->dropping) {
  vars->dropping = 0;
 }

 if (next_due && vars->dropping) {

  drop = !(vars->ecn_marked = INET_ECN_set_ce(skb));

  vars->count++;
  if (!vars->count)
   vars->count--;
  cobalt_invsqrt(vars);
  vars->drop_next = cobalt_control(vars->drop_next,
       p->interval,
       vars->rec_inv_sqrt);
  schedule = ktime_sub(now, vars->drop_next);
 } else {
  while (next_due) {
   vars->count--;
   cobalt_invsqrt(vars);
   vars->drop_next = cobalt_control(vars->drop_next,
        p->interval,
        vars->rec_inv_sqrt);
   schedule = ktime_sub(now, vars->drop_next);
   next_due = vars->count && ktime_to_ns(schedule) >= 0;
  }
 }


 if (vars->p_drop)
  drop |= (prandom_u32() < vars->p_drop);


 if (!vars->count)
  vars->drop_next = ktime_add_ns(now, p->interval);
 else if (ktime_to_ns(schedule) > 0 && !drop)
  vars->drop_next = now;

 return drop;
}
