
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlan_id ;
struct vlan_dev_priv {int real_dev; int vlan_proto; int vlan_id; } ;
struct net_device {int dummy; } ;
typedef int __be16 ;


 int ETH_P_8021Q ;
 int GVRP_ATTR_VID ;
 int garp_request_leave (int ,int *,int *,int,int ) ;
 int htons (int ) ;
 struct vlan_dev_priv* vlan_dev_priv (struct net_device const*) ;
 int vlan_gvrp_app ;

void vlan_gvrp_request_leave(const struct net_device *dev)
{
 const struct vlan_dev_priv *vlan = vlan_dev_priv(dev);
 __be16 vlan_id = htons(vlan->vlan_id);

 if (vlan->vlan_proto != htons(ETH_P_8021Q))
  return;
 garp_request_leave(vlan->real_dev, &vlan_gvrp_app,
      &vlan_id, sizeof(vlan_id), GVRP_ATTR_VID);
}
