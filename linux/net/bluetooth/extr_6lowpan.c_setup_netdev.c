
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {int state; int ifindex; int * netdev_ops; scalar_t__ dev_addr; int addr_assign_type; } ;
struct lowpan_btle_dev {int list; int peers; TYPE_1__* hdev; struct net_device* netdev; } ;
struct l2cap_chan {int src_type; int src; int dst_type; int dst; TYPE_3__* conn; } ;
struct TYPE_6__ {TYPE_2__* hcon; } ;
struct TYPE_5__ {TYPE_1__* hdev; } ;
struct TYPE_4__ {int dev; } ;


 int BT_DBG (char*,int ,int *,int ,int *,int ) ;
 int BT_INFO (char*,int) ;
 int ENOMEM ;
 int IFACE_NAME_TEMPLATE ;
 int INIT_LIST_HEAD (int *) ;
 int LOWPAN_LLTYPE_BTLE ;
 int LOWPAN_PRIV_SIZE (int) ;
 int NET_ADDR_PERM ;
 int NET_NAME_UNKNOWN ;
 int SET_NETDEV_DEV (struct net_device*,int *) ;
 int SET_NETDEV_DEVTYPE (struct net_device*,int *) ;
 int __LINK_STATE_PRESENT ;
 struct net_device* alloc_netdev (int ,int ,int ,int ) ;
 int baswap (void*,int *) ;
 int bt_6lowpan_devices ;
 int bt_type ;
 int devices_lock ;
 int free_netdev (struct net_device*) ;
 int list_add_rcu (int *,int *) ;
 int list_del_rcu (int *) ;
 struct lowpan_btle_dev* lowpan_btle_dev (struct net_device*) ;
 int lowpan_register_netdev (struct net_device*,int ) ;
 int netdev_ops ;
 int netdev_setup ;
 int set_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int setup_netdev(struct l2cap_chan *chan, struct lowpan_btle_dev **dev)
{
 struct net_device *netdev;
 int err = 0;

 netdev = alloc_netdev(LOWPAN_PRIV_SIZE(sizeof(struct lowpan_btle_dev)),
         IFACE_NAME_TEMPLATE, NET_NAME_UNKNOWN,
         netdev_setup);
 if (!netdev)
  return -ENOMEM;

 netdev->addr_assign_type = NET_ADDR_PERM;
 baswap((void *)netdev->dev_addr, &chan->src);

 netdev->netdev_ops = &netdev_ops;
 SET_NETDEV_DEV(netdev, &chan->conn->hcon->hdev->dev);
 SET_NETDEV_DEVTYPE(netdev, &bt_type);

 *dev = lowpan_btle_dev(netdev);
 (*dev)->netdev = netdev;
 (*dev)->hdev = chan->conn->hcon->hdev;
 INIT_LIST_HEAD(&(*dev)->peers);

 spin_lock(&devices_lock);
 INIT_LIST_HEAD(&(*dev)->list);
 list_add_rcu(&(*dev)->list, &bt_6lowpan_devices);
 spin_unlock(&devices_lock);

 err = lowpan_register_netdev(netdev, LOWPAN_LLTYPE_BTLE);
 if (err < 0) {
  BT_INFO("register_netdev failed %d", err);
  spin_lock(&devices_lock);
  list_del_rcu(&(*dev)->list);
  spin_unlock(&devices_lock);
  free_netdev(netdev);
  goto out;
 }

 BT_DBG("ifindex %d peer bdaddr %pMR type %d my addr %pMR type %d",
        netdev->ifindex, &chan->dst, chan->dst_type,
        &chan->src, chan->src_type);
 set_bit(__LINK_STATE_PRESENT, &netdev->state);

 return 0;

out:
 return err;
}
