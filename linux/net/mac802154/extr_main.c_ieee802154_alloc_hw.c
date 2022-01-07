
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int max_minbe; int min_maxbe; int max_maxbe; int max_frame_retries; int max_csma_backoffs; int iftypes; int lbt; scalar_t__ min_frame_retries; } ;
struct wpan_phy {TYPE_1__ supported; int privid; } ;
struct ieee802154_ops {int set_channel; int stop; int start; int ed; scalar_t__ xmit_sync; scalar_t__ xmit_async; } ;
struct ieee802154_hw {char* priv; struct wpan_phy* phy; } ;
struct ieee802154_local {struct ieee802154_hw hw; int tx_work; int skb_queue; int tasklet; int iflist_mtx; int interfaces; struct ieee802154_ops const* ops; struct wpan_phy* phy; } ;


 size_t ALIGN (int,int ) ;
 int BIT (int ) ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int NETDEV_ALIGN ;
 int NL802154_IFTYPE_NODE ;
 int NL802154_SUPPORTED_BOOL_FALSE ;
 scalar_t__ WARN_ON (int) ;
 int ieee802154_tasklet_handler ;
 int ieee802154_xmit_worker ;
 int mac802154_config_ops ;
 int mac802154_wpan_phy_privid ;
 int mutex_init (int *) ;
 int pr_err (char*) ;
 int skb_queue_head_init (int *) ;
 int tasklet_init (int *,int ,unsigned long) ;
 struct wpan_phy* wpan_phy_new (int *,size_t) ;
 struct ieee802154_local* wpan_phy_priv (struct wpan_phy*) ;

struct ieee802154_hw *
ieee802154_alloc_hw(size_t priv_data_len, const struct ieee802154_ops *ops)
{
 struct wpan_phy *phy;
 struct ieee802154_local *local;
 size_t priv_size;

 if (WARN_ON(!ops || !(ops->xmit_async || ops->xmit_sync) || !ops->ed ||
      !ops->start || !ops->stop || !ops->set_channel))
  return ((void*)0);
 priv_size = ALIGN(sizeof(*local), NETDEV_ALIGN) + priv_data_len;

 phy = wpan_phy_new(&mac802154_config_ops, priv_size);
 if (!phy) {
  pr_err("failure to allocate master IEEE802.15.4 device\n");
  return ((void*)0);
 }

 phy->privid = mac802154_wpan_phy_privid;

 local = wpan_phy_priv(phy);
 local->phy = phy;
 local->hw.phy = local->phy;
 local->hw.priv = (char *)local + ALIGN(sizeof(*local), NETDEV_ALIGN);
 local->ops = ops;

 INIT_LIST_HEAD(&local->interfaces);
 mutex_init(&local->iflist_mtx);

 tasklet_init(&local->tasklet,
       ieee802154_tasklet_handler,
       (unsigned long)local);

 skb_queue_head_init(&local->skb_queue);

 INIT_WORK(&local->tx_work, ieee802154_xmit_worker);


 phy->supported.max_minbe = 8;
 phy->supported.min_maxbe = 3;
 phy->supported.max_maxbe = 8;
 phy->supported.min_frame_retries = 0;
 phy->supported.max_frame_retries = 7;
 phy->supported.max_csma_backoffs = 5;
 phy->supported.lbt = NL802154_SUPPORTED_BOOL_FALSE;


 phy->supported.iftypes = BIT(NL802154_IFTYPE_NODE);

 return &local->hw;
}
