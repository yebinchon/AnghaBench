
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {unsigned int max_mtu; } ;
struct dsa_port {TYPE_1__* tag_ops; } ;
struct TYPE_2__ {unsigned int overhead; } ;


 unsigned int ETH_DATA_LEN ;
 int dev_set_mtu (struct net_device*,unsigned int) ;
 int netdev_dbg (struct net_device*,char*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

__attribute__((used)) static void dsa_master_set_mtu(struct net_device *dev, struct dsa_port *cpu_dp)
{
 unsigned int mtu = ETH_DATA_LEN + cpu_dp->tag_ops->overhead;
 int err;

 rtnl_lock();
 if (mtu <= dev->max_mtu) {
  err = dev_set_mtu(dev, mtu);
  if (err)
   netdev_dbg(dev, "Unable to set MTU to include for DSA overheads\n");
 }
 rtnl_unlock();
}
