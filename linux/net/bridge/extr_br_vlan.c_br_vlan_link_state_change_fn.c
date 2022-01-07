
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct br_vlan_link_state_walk_data {int br; } ;


 scalar_t__ br_vlan_is_bind_vlan_dev (struct net_device*) ;
 int br_vlan_set_vlan_dev_state (int ,struct net_device*) ;

__attribute__((used)) static int br_vlan_link_state_change_fn(struct net_device *vlan_dev,
     void *data_in)
{
 struct br_vlan_link_state_walk_data *data = data_in;

 if (br_vlan_is_bind_vlan_dev(vlan_dev))
  br_vlan_set_vlan_dev_state(data->br, vlan_dev);

 return 0;
}
