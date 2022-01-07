
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dsa_switch {TYPE_1__* ops; } ;
struct dsa_port {int index; int bridge_dev; struct dsa_switch* ds; } ;
struct TYPE_2__ {int (* port_disable ) (struct dsa_switch*,int) ;} ;


 int BR_STATE_DISABLED ;
 int dsa_port_set_state_now (struct dsa_port*,int ) ;
 int stub1 (struct dsa_switch*,int) ;

void dsa_port_disable(struct dsa_port *dp)
{
 struct dsa_switch *ds = dp->ds;
 int port = dp->index;

 if (!dp->bridge_dev)
  dsa_port_set_state_now(dp, BR_STATE_DISABLED);

 if (ds->ops->port_disable)
  ds->ops->port_disable(ds, port);
}
