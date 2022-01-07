
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct net_device {int dummy; } ;
struct dsa_port {scalar_t__ bridge_dev; } ;
struct bridge_vlan_info {int dummy; } ;
typedef int __be16 ;


 int EBUSY ;
 int br_vlan_enabled (scalar_t__) ;
 int br_vlan_get_info (scalar_t__,int ,struct bridge_vlan_info*) ;
 int dsa_port_vid_del (struct dsa_port*,int ) ;
 struct dsa_port* dsa_slave_to_port (struct net_device*) ;

__attribute__((used)) static int dsa_slave_vlan_rx_kill_vid(struct net_device *dev, __be16 proto,
          u16 vid)
{
 struct dsa_port *dp = dsa_slave_to_port(dev);
 struct bridge_vlan_info info;
 int ret;




 if (dp->bridge_dev) {
  if (!br_vlan_enabled(dp->bridge_dev))
   return 0;





  ret = br_vlan_get_info(dp->bridge_dev, vid, &info);
  if (ret == 0)
   return -EBUSY;
 }




 return dsa_port_vid_del(dp, vid);
}
