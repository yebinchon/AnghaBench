
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int* hw_queue; int cab_queue; } ;
struct ieee80211_sub_if_data {TYPE_2__ vif; TYPE_1__* local; } ;
typedef enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;
struct TYPE_6__ {int queues; } ;
struct TYPE_4__ {TYPE_3__ hw; } ;


 int EINVAL ;
 int IEEE80211_INVAL_HW_QUEUE ;
 int IEEE80211_NUM_ACS ;
 int NL80211_IFTYPE_AP ;
 int NL80211_IFTYPE_MESH_POINT ;
 int NL80211_IFTYPE_NAN ;
 int NL80211_IFTYPE_P2P_DEVICE ;
 int NL80211_IFTYPE_P2P_GO ;
 int QUEUE_CONTROL ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int ieee80211_hw_check (TYPE_3__*,int ) ;

__attribute__((used)) static int ieee80211_check_queues(struct ieee80211_sub_if_data *sdata,
      enum nl80211_iftype iftype)
{
 int n_queues = sdata->local->hw.queues;
 int i;

 if (iftype == NL80211_IFTYPE_NAN)
  return 0;

 if (iftype != NL80211_IFTYPE_P2P_DEVICE) {
  for (i = 0; i < IEEE80211_NUM_ACS; i++) {
   if (WARN_ON_ONCE(sdata->vif.hw_queue[i] ==
      IEEE80211_INVAL_HW_QUEUE))
    return -EINVAL;
   if (WARN_ON_ONCE(sdata->vif.hw_queue[i] >=
      n_queues))
    return -EINVAL;
  }
 }

 if ((iftype != NL80211_IFTYPE_AP &&
      iftype != NL80211_IFTYPE_P2P_GO &&
      iftype != NL80211_IFTYPE_MESH_POINT) ||
     !ieee80211_hw_check(&sdata->local->hw, QUEUE_CONTROL)) {
  sdata->vif.cab_queue = IEEE80211_INVAL_HW_QUEUE;
  return 0;
 }

 if (WARN_ON_ONCE(sdata->vif.cab_queue == IEEE80211_INVAL_HW_QUEUE))
  return -EINVAL;

 if (WARN_ON_ONCE(sdata->vif.cab_queue >= n_queues))
  return -EINVAL;

 return 0;
}
