
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int mtu; } ;
struct hsr_priv {int dummy; } ;
struct hsr_port {int dev; } ;


 int EINVAL ;
 int HSR_HLEN ;
 int HSR_PT_MASTER ;
 int hsr_get_max_mtu (struct hsr_priv*) ;
 struct hsr_port* hsr_port_get_hsr (struct hsr_priv*,int ) ;
 int netdev_info (int ,char*,int ) ;
 struct hsr_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int hsr_dev_change_mtu(struct net_device *dev, int new_mtu)
{
 struct hsr_priv *hsr;
 struct hsr_port *master;

 hsr = netdev_priv(dev);
 master = hsr_port_get_hsr(hsr, HSR_PT_MASTER);

 if (new_mtu > hsr_get_max_mtu(hsr)) {
  netdev_info(master->dev, "A HSR master's MTU cannot be greater than the smallest MTU of its slaves minus the HSR Tag length (%d octets).\n",
       HSR_HLEN);
  return -EINVAL;
 }

 dev->mtu = new_mtu;

 return 0;
}
