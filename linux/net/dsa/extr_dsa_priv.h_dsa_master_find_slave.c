
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {struct dsa_port* dsa_ptr; } ;
struct dsa_switch_tree {struct dsa_switch** ds; } ;
struct dsa_switch {int num_ports; struct dsa_port* ports; } ;
struct dsa_port {scalar_t__ type; struct net_device* slave; struct dsa_switch_tree* dst; } ;


 int DSA_MAX_SWITCHES ;
 scalar_t__ DSA_PORT_TYPE_USER ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline struct net_device *dsa_master_find_slave(struct net_device *dev,
             int device, int port)
{
 struct dsa_port *cpu_dp = dev->dsa_ptr;
 struct dsa_switch_tree *dst = cpu_dp->dst;
 struct dsa_switch *ds;
 struct dsa_port *slave_port;

 if (device < 0 || device >= DSA_MAX_SWITCHES)
  return ((void*)0);

 ds = dst->ds[device];
 if (!ds)
  return ((void*)0);

 if (port < 0 || port >= ds->num_ports)
  return ((void*)0);

 slave_port = &ds->ports[port];

 if (unlikely(slave_port->type != DSA_PORT_TYPE_USER))
  return ((void*)0);

 return slave_port->slave;
}
