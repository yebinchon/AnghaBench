
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct TYPE_4__ {int addr; int * prio; } ;
struct net_bridge_port {scalar_t__ state; TYPE_1__* dev; scalar_t__ port_no; TYPE_2__ designated_bridge; struct net_bridge* br; } ;
struct net_bridge {int lock; } ;
typedef TYPE_2__ bridge_id ;
struct TYPE_3__ {int name; } ;


 scalar_t__ BR_STATE_DISABLED ;
 int br_become_designated_port (struct net_bridge_port*) ;
 int br_become_root_bridge (struct net_bridge*) ;
 int br_configuration_update (struct net_bridge*) ;
 int br_info (struct net_bridge*,char*,unsigned int,int ,int ,int ,int *) ;
 int br_is_root_bridge (struct net_bridge*) ;
 int br_port_state_selection (struct net_bridge*) ;
 struct net_bridge_port* from_timer (int ,struct timer_list*,int ) ;
 int message_age_timer ;
 struct net_bridge_port* p ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void br_message_age_timer_expired(struct timer_list *t)
{
 struct net_bridge_port *p = from_timer(p, t, message_age_timer);
 struct net_bridge *br = p->br;
 const bridge_id *id = &p->designated_bridge;
 int was_root;

 if (p->state == BR_STATE_DISABLED)
  return;

 br_info(br, "port %u(%s) neighbor %.2x%.2x.%pM lost\n",
  (unsigned int) p->port_no, p->dev->name,
  id->prio[0], id->prio[1], &id->addr);






 spin_lock(&br->lock);
 if (p->state == BR_STATE_DISABLED)
  goto unlock;
 was_root = br_is_root_bridge(br);

 br_become_designated_port(p);
 br_configuration_update(br);
 br_port_state_selection(br);
 if (br_is_root_bridge(br) && !was_root)
  br_become_root_bridge(br);
 unlock:
 spin_unlock(&br->lock);
}
