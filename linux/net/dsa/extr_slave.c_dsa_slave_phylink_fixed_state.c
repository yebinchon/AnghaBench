
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct phylink_link_state {int dummy; } ;
struct net_device {int dummy; } ;
struct dsa_switch {TYPE_1__* ops; } ;
struct dsa_port {int index; struct dsa_switch* ds; } ;
struct TYPE_2__ {int (* phylink_fixed_state ) (struct dsa_switch*,int ,struct phylink_link_state*) ;} ;


 struct dsa_port* dsa_slave_to_port (struct net_device*) ;
 int stub1 (struct dsa_switch*,int ,struct phylink_link_state*) ;

__attribute__((used)) static void dsa_slave_phylink_fixed_state(struct net_device *dev,
       struct phylink_link_state *state)
{
 struct dsa_port *dp = dsa_slave_to_port(dev);
 struct dsa_switch *ds = dp->ds;




 ds->ops->phylink_fixed_state(ds, dp->index, state);
}
