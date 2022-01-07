
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct wiphy {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int remote_addr; } ;
struct TYPE_4__ {TYPE_1__ wds; } ;
struct ieee80211_sub_if_data {TYPE_2__ u; } ;


 int ETH_ALEN ;
 struct ieee80211_sub_if_data* IEEE80211_DEV_TO_SUB_IF (struct net_device*) ;
 int memcpy (int *,int const*,int ) ;

__attribute__((used)) static int ieee80211_set_wds_peer(struct wiphy *wiphy, struct net_device *dev,
      const u8 *addr)
{
 struct ieee80211_sub_if_data *sdata = IEEE80211_DEV_TO_SUB_IF(dev);

 memcpy(&sdata->u.wds.remote_addr, addr, ETH_ALEN);

 return 0;
}
