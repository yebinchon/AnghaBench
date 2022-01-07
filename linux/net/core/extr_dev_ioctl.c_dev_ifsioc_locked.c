
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int tx_queue_len; int ifindex; int if_port; int dma; int irq; int base_addr; int mem_end; int mem_start; int type; int addr_len; int dev_addr; int mtu; } ;
struct net {int dummy; } ;
struct TYPE_4__ {int port; int dma; int irq; int base_addr; int mem_end; int mem_start; } ;
struct TYPE_3__ {int sa_family; int sa_data; } ;
struct ifreq {short ifr_flags; int ifr_qlen; int ifr_ifindex; TYPE_2__ ifr_map; TYPE_1__ ifr_hwaddr; int ifr_mtu; int ifr_metric; int ifr_name; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOTTY ;
 int WARN_ON (int) ;
 struct net_device* dev_get_by_name_rcu (struct net*,int ) ;
 scalar_t__ dev_get_flags (struct net_device*) ;
 int memcpy (int ,int ,int ) ;
 int memset (int ,int ,int) ;
 int min (int,size_t) ;

__attribute__((used)) static int dev_ifsioc_locked(struct net *net, struct ifreq *ifr, unsigned int cmd)
{
 int err;
 struct net_device *dev = dev_get_by_name_rcu(net, ifr->ifr_name);

 if (!dev)
  return -ENODEV;

 switch (cmd) {
 case 135:
  ifr->ifr_flags = (short) dev_get_flags(dev);
  return 0;

 case 131:

  ifr->ifr_metric = 0;
  return 0;

 case 130:
  ifr->ifr_mtu = dev->mtu;
  return 0;

 case 134:
  if (!dev->addr_len)
   memset(ifr->ifr_hwaddr.sa_data, 0,
          sizeof(ifr->ifr_hwaddr.sa_data));
  else
   memcpy(ifr->ifr_hwaddr.sa_data, dev->dev_addr,
          min(sizeof(ifr->ifr_hwaddr.sa_data),
       (size_t)dev->addr_len));
  ifr->ifr_hwaddr.sa_family = dev->type;
  return 0;

 case 129:
  err = -EINVAL;
  break;

 case 132:
  ifr->ifr_map.mem_start = dev->mem_start;
  ifr->ifr_map.mem_end = dev->mem_end;
  ifr->ifr_map.base_addr = dev->base_addr;
  ifr->ifr_map.irq = dev->irq;
  ifr->ifr_map.dma = dev->dma;
  ifr->ifr_map.port = dev->if_port;
  return 0;

 case 133:
  ifr->ifr_ifindex = dev->ifindex;
  return 0;

 case 128:
  ifr->ifr_qlen = dev->tx_queue_len;
  return 0;

 default:



  WARN_ON(1);
  err = -ENOTTY;
  break;

 }
 return err;
}
