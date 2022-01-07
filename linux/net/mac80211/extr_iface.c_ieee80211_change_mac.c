
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sockaddr {int sa_data; } ;
struct net_device {int dummy; } ;
struct TYPE_6__ {scalar_t__ type; int addr; } ;
struct TYPE_4__ {int flags; } ;
struct TYPE_5__ {TYPE_1__ mntr; } ;
struct ieee80211_sub_if_data {TYPE_3__ vif; TYPE_2__ u; } ;


 int EBUSY ;
 int ETH_ALEN ;
 struct ieee80211_sub_if_data* IEEE80211_DEV_TO_SUB_IF (struct net_device*) ;
 int MONITOR_FLAG_ACTIVE ;
 scalar_t__ NL80211_IFTYPE_MONITOR ;
 int eth_mac_addr (struct net_device*,struct sockaddr*) ;
 scalar_t__ ieee80211_sdata_running (struct ieee80211_sub_if_data*) ;
 int ieee80211_verify_mac (struct ieee80211_sub_if_data*,int ,int) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static int ieee80211_change_mac(struct net_device *dev, void *addr)
{
 struct ieee80211_sub_if_data *sdata = IEEE80211_DEV_TO_SUB_IF(dev);
 struct sockaddr *sa = addr;
 bool check_dup = 1;
 int ret;

 if (ieee80211_sdata_running(sdata))
  return -EBUSY;

 if (sdata->vif.type == NL80211_IFTYPE_MONITOR &&
     !(sdata->u.mntr.flags & MONITOR_FLAG_ACTIVE))
  check_dup = 0;

 ret = ieee80211_verify_mac(sdata, sa->sa_data, check_dup);
 if (ret)
  return ret;

 ret = eth_mac_addr(dev, sa);

 if (ret == 0)
  memcpy(sdata->vif.addr, sa->sa_data, ETH_ALEN);

 return ret;
}
