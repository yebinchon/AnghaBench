
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switchdev_obj_port_vlan {int dummy; } ;
struct dsa_switch {int dummy; } ;
struct dsa_port {int slave; int bridge_dev; } ;


 int dsa_port_vlan_device_check ;
 struct dsa_port* dsa_to_port (struct dsa_switch*,int) ;
 int vlan_for_each (int ,int ,void*) ;

__attribute__((used)) static int dsa_port_vlan_check(struct dsa_switch *ds, int port,
          const struct switchdev_obj_port_vlan *vlan)
{
 const struct dsa_port *dp = dsa_to_port(ds, port);
 int err = 0;




 if (!dp->bridge_dev)
  return err;







 return vlan_for_each(dp->slave, dsa_port_vlan_device_check,
        (void *)vlan);
}
