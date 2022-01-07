
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int dummy; } ;
struct net_device {int dummy; } ;
struct mac80211_qos_map {int qos_map; } ;
struct ieee80211_sub_if_data {int qos_map; } ;
struct cfg80211_qos_map {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct ieee80211_sub_if_data* IEEE80211_DEV_TO_SUB_IF (struct net_device*) ;
 int kfree_rcu (struct mac80211_qos_map*,int ) ;
 struct mac80211_qos_map* kzalloc (int,int ) ;
 int memcpy (int *,struct cfg80211_qos_map*,int) ;
 int rcu_assign_pointer (int ,struct mac80211_qos_map*) ;
 int rcu_head ;
 struct mac80211_qos_map* sdata_dereference (int ,struct ieee80211_sub_if_data*) ;

__attribute__((used)) static int ieee80211_set_qos_map(struct wiphy *wiphy,
     struct net_device *dev,
     struct cfg80211_qos_map *qos_map)
{
 struct ieee80211_sub_if_data *sdata = IEEE80211_DEV_TO_SUB_IF(dev);
 struct mac80211_qos_map *new_qos_map, *old_qos_map;

 if (qos_map) {
  new_qos_map = kzalloc(sizeof(*new_qos_map), GFP_KERNEL);
  if (!new_qos_map)
   return -ENOMEM;
  memcpy(&new_qos_map->qos_map, qos_map, sizeof(*qos_map));
 } else {

  new_qos_map = ((void*)0);
 }

 old_qos_map = sdata_dereference(sdata->qos_map, sdata);
 rcu_assign_pointer(sdata->qos_map, new_qos_map);
 if (old_qos_map)
  kfree_rcu(old_qos_map, rcu_head);

 return 0;
}
