
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {TYPE_1__* ieee80211_ptr; } ;
struct ieee80211_local {int dummy; } ;
struct ethtool_ringparam {int rx_max_pending; int rx_pending; int tx_max_pending; int tx_pending; } ;
struct TYPE_2__ {int wiphy; } ;


 int drv_get_ringparam (struct ieee80211_local*,int *,int *,int *,int *) ;
 int memset (struct ethtool_ringparam*,int ,int) ;
 struct ieee80211_local* wiphy_priv (int ) ;

__attribute__((used)) static void ieee80211_get_ringparam(struct net_device *dev,
        struct ethtool_ringparam *rp)
{
 struct ieee80211_local *local = wiphy_priv(dev->ieee80211_ptr->wiphy);

 memset(rp, 0, sizeof(*rp));

 drv_get_ringparam(local, &rp->tx_pending, &rp->tx_max_pending,
     &rp->rx_pending, &rp->rx_max_pending);
}
