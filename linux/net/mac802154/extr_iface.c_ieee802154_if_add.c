
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct net_device {int name; TYPE_2__* ieee802154_ptr; int type; int perm_addr; int dev_addr; scalar_t__ needed_headroom; } ;
struct TYPE_6__ {TYPE_4__* wpan_phy; } ;
struct ieee802154_sub_if_data {int list; struct ieee802154_local* local; TYPE_2__ wpan_dev; struct net_device* dev; int name; } ;
struct TYPE_7__ {TYPE_4__* phy; scalar_t__ extra_tx_headroom; } ;
struct ieee802154_local {int iflist_mtx; int interfaces; TYPE_3__ hw; TYPE_1__* phy; } ;
typedef enum nl802154_iftype { ____Placeholder_nl802154_iftype } nl802154_iftype ;
typedef int __le64 ;
struct TYPE_8__ {int perm_extended_addr; } ;
struct TYPE_5__ {int dev; } ;


 int ARPHRD_IEEE802154 ;
 int ARPHRD_IEEE802154_MONITOR ;
 int ASSERT_RTNL () ;
 int EINVAL ;
 int ENOMEM ;
 struct net_device* ERR_PTR (int) ;
 int IEEE802154_EXTENDED_ADDR_LEN ;
 scalar_t__ IEEE802154_MAX_HEADER_LEN ;
 int IFNAMSIZ ;


 int SET_NETDEV_DEV (struct net_device*,int *) ;
 struct net_device* alloc_netdev (int,char const*,unsigned char,int ) ;
 int dev_alloc_name (struct net_device*,int ) ;
 int dev_net_set (struct net_device*,int ) ;
 int free_netdev (struct net_device*) ;
 int ieee802154_if_setup ;
 int ieee802154_is_valid_extended_unicast_addr (int ) ;
 int ieee802154_le64_to_be64 (int ,int *) ;
 int ieee802154_setup_sdata (struct ieee802154_sub_if_data*,int) ;
 int list_add_tail_rcu (int *,int *) ;
 int memcpy (int ,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct ieee802154_sub_if_data* netdev_priv (struct net_device*) ;
 int register_netdevice (struct net_device*) ;
 int wpan_phy_net (TYPE_4__*) ;

struct net_device *
ieee802154_if_add(struct ieee802154_local *local, const char *name,
    unsigned char name_assign_type, enum nl802154_iftype type,
    __le64 extended_addr)
{
 struct net_device *ndev = ((void*)0);
 struct ieee802154_sub_if_data *sdata = ((void*)0);
 int ret = -ENOMEM;

 ASSERT_RTNL();

 ndev = alloc_netdev(sizeof(*sdata), name,
       name_assign_type, ieee802154_if_setup);
 if (!ndev)
  return ERR_PTR(-ENOMEM);

 ndev->needed_headroom = local->hw.extra_tx_headroom +
    IEEE802154_MAX_HEADER_LEN;

 ret = dev_alloc_name(ndev, ndev->name);
 if (ret < 0)
  goto err;

 ieee802154_le64_to_be64(ndev->perm_addr,
    &local->hw.phy->perm_extended_addr);
 switch (type) {
 case 128:
  ndev->type = ARPHRD_IEEE802154;
  if (ieee802154_is_valid_extended_unicast_addr(extended_addr))
   ieee802154_le64_to_be64(ndev->dev_addr, &extended_addr);
  else
   memcpy(ndev->dev_addr, ndev->perm_addr,
          IEEE802154_EXTENDED_ADDR_LEN);
  break;
 case 129:
  ndev->type = ARPHRD_IEEE802154_MONITOR;
  break;
 default:
  ret = -EINVAL;
  goto err;
 }


 SET_NETDEV_DEV(ndev, &local->phy->dev);
 dev_net_set(ndev, wpan_phy_net(local->hw.phy));
 sdata = netdev_priv(ndev);
 ndev->ieee802154_ptr = &sdata->wpan_dev;
 memcpy(sdata->name, ndev->name, IFNAMSIZ);
 sdata->dev = ndev;
 sdata->wpan_dev.wpan_phy = local->hw.phy;
 sdata->local = local;


 ret = ieee802154_setup_sdata(sdata, type);
 if (ret)
  goto err;

 ret = register_netdevice(ndev);
 if (ret < 0)
  goto err;

 mutex_lock(&local->iflist_mtx);
 list_add_tail_rcu(&sdata->list, &local->interfaces);
 mutex_unlock(&local->iflist_mtx);

 return ndev;

err:
 free_netdev(ndev);
 return ERR_PTR(ret);
}
