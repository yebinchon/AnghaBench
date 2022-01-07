
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_peer {int peer_cnt; int is_up; int is_head; scalar_t__ timer_intv; int timer; int list; int addr; struct tipc_peer* domain; struct tipc_peer* self; struct net* net; int lock; } ;
struct tipc_net {int random; struct tipc_peer** monitors; } ;
struct tipc_monitor {int peer_cnt; int is_up; int is_head; scalar_t__ timer_intv; int timer; int list; int addr; struct tipc_monitor* domain; struct tipc_monitor* self; struct net* net; int lock; } ;
struct tipc_mon_domain {int peer_cnt; int is_up; int is_head; scalar_t__ timer_intv; int timer; int list; int addr; struct tipc_mon_domain* domain; struct tipc_mon_domain* self; struct net* net; int lock; } ;
struct net {int dummy; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ MON_TIMEOUT ;
 scalar_t__ jiffies ;
 int kfree (struct tipc_peer*) ;
 struct tipc_peer* kzalloc (int,int ) ;
 int mod_timer (int *,scalar_t__) ;
 int mon_timeout ;
 scalar_t__ msecs_to_jiffies (scalar_t__) ;
 int rwlock_init (int *) ;
 int timer_setup (int *,int ,int ) ;
 struct tipc_net* tipc_net (struct net*) ;
 int tipc_own_addr (struct net*) ;

int tipc_mon_create(struct net *net, int bearer_id)
{
 struct tipc_net *tn = tipc_net(net);
 struct tipc_monitor *mon;
 struct tipc_peer *self;
 struct tipc_mon_domain *dom;

 if (tn->monitors[bearer_id])
  return 0;

 mon = kzalloc(sizeof(*mon), GFP_ATOMIC);
 self = kzalloc(sizeof(*self), GFP_ATOMIC);
 dom = kzalloc(sizeof(*dom), GFP_ATOMIC);
 if (!mon || !self || !dom) {
  kfree(mon);
  kfree(self);
  kfree(dom);
  return -ENOMEM;
 }
 tn->monitors[bearer_id] = mon;
 rwlock_init(&mon->lock);
 mon->net = net;
 mon->peer_cnt = 1;
 mon->self = self;
 self->domain = dom;
 self->addr = tipc_own_addr(net);
 self->is_up = 1;
 self->is_head = 1;
 INIT_LIST_HEAD(&self->list);
 timer_setup(&mon->timer, mon_timeout, 0);
 mon->timer_intv = msecs_to_jiffies(MON_TIMEOUT + (tn->random & 0xffff));
 mod_timer(&mon->timer, jiffies + mon->timer_intv);
 return 0;
}
