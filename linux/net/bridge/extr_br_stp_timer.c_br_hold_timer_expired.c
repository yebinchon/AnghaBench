
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct net_bridge_port {TYPE_2__* br; scalar_t__ config_pending; TYPE_1__* dev; scalar_t__ port_no; } ;
struct TYPE_4__ {int lock; } ;
struct TYPE_3__ {int name; } ;


 int br_debug (TYPE_2__*,char*,unsigned int,int ) ;
 int br_transmit_config (struct net_bridge_port*) ;
 struct net_bridge_port* from_timer (int ,struct timer_list*,int ) ;
 int hold_timer ;
 struct net_bridge_port* p ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void br_hold_timer_expired(struct timer_list *t)
{
 struct net_bridge_port *p = from_timer(p, t, hold_timer);

 br_debug(p->br, "port %u(%s) hold timer expired\n",
   (unsigned int) p->port_no, p->dev->name);

 spin_lock(&p->br->lock);
 if (p->config_pending)
  br_transmit_config(p);
 spin_unlock(&p->br->lock);
}
