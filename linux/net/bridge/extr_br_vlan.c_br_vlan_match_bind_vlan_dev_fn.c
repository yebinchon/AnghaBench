
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct br_vlan_bind_walk_data {scalar_t__ vid; struct net_device* result; } ;
struct TYPE_2__ {scalar_t__ vlan_id; } ;


 scalar_t__ br_vlan_is_bind_vlan_dev (struct net_device*) ;
 TYPE_1__* vlan_dev_priv (struct net_device*) ;

__attribute__((used)) static int br_vlan_match_bind_vlan_dev_fn(struct net_device *dev,
       void *data_in)
{
 struct br_vlan_bind_walk_data *data = data_in;
 int found = 0;

 if (br_vlan_is_bind_vlan_dev(dev) &&
     vlan_dev_priv(dev)->vlan_id == data->vid) {
  data->result = dev;
  found = 1;
 }

 return found;
}
