
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_peer {int applied; } ;
struct tipc_monitor {scalar_t__ timer_intv; int timer; int lock; struct tipc_peer* self; int peer_cnt; } ;
struct timer_list {int dummy; } ;


 int dom_size (int ) ;
 struct tipc_monitor* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 struct tipc_monitor* mon ;
 int mon_assign_roles (struct tipc_monitor*,struct tipc_peer*) ;
 int mon_update_local_domain (struct tipc_monitor*) ;
 int timer ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static void mon_timeout(struct timer_list *t)
{
 struct tipc_monitor *mon = from_timer(mon, t, timer);
 struct tipc_peer *self;
 int best_member_cnt = dom_size(mon->peer_cnt) - 1;

 write_lock_bh(&mon->lock);
 self = mon->self;
 if (self && (best_member_cnt != self->applied)) {
  mon_update_local_domain(mon);
  mon_assign_roles(mon, self);
 }
 write_unlock_bh(&mon->lock);
 mod_timer(&mon->timer, jiffies + mon->timer_intv);
}
