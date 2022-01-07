
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct wiphy {int dummy; } ;
struct net_device {int dummy; } ;
struct ieee80211_if_managed {struct ieee80211_sta_tx_tspec* tx_tspec; } ;
struct TYPE_2__ {struct ieee80211_if_managed mgd; } ;
struct ieee80211_sub_if_data {TYPE_1__ u; } ;
struct ieee80211_sta_tx_tspec {scalar_t__ tsid; int up; int downgraded; int action; int admitted_time; } ;
struct ieee80211_local {int dummy; } ;


 int ENOENT ;
 struct ieee80211_sub_if_data* IEEE80211_DEV_TO_SUB_IF (struct net_device*) ;
 int IEEE80211_NUM_ACS ;
 int TX_TSPEC_ACTION_STOP_DOWNGRADE ;
 int ieee80211_flush_queues (struct ieee80211_local*,struct ieee80211_sub_if_data*,int) ;
 int ieee80211_sta_handle_tspec_ac_params (struct ieee80211_sub_if_data*) ;
 int memset (struct ieee80211_sta_tx_tspec*,int ,int) ;
 int synchronize_net () ;
 struct ieee80211_local* wiphy_priv (struct wiphy*) ;

__attribute__((used)) static int ieee80211_del_tx_ts(struct wiphy *wiphy, struct net_device *dev,
          u8 tsid, const u8 *peer)
{
 struct ieee80211_sub_if_data *sdata = IEEE80211_DEV_TO_SUB_IF(dev);
 struct ieee80211_if_managed *ifmgd = &sdata->u.mgd;
 struct ieee80211_local *local = wiphy_priv(wiphy);
 int ac;

 for (ac = 0; ac < IEEE80211_NUM_ACS; ac++) {
  struct ieee80211_sta_tx_tspec *tx_tspec = &ifmgd->tx_tspec[ac];


  if (!tx_tspec->admitted_time)
   continue;

  if (tx_tspec->tsid != tsid)
   continue;


  tx_tspec->up = -1;





  synchronize_net();
  ieee80211_flush_queues(local, sdata, 0);




  tx_tspec->action = TX_TSPEC_ACTION_STOP_DOWNGRADE;
  tx_tspec->downgraded = 0;
  ieee80211_sta_handle_tspec_ac_params(sdata);


  memset(tx_tspec, 0, sizeof(*tx_tspec));

  return 0;
 }

 return -ENOENT;
}
