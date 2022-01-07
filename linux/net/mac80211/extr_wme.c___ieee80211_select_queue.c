
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {int wme; } ;
struct sta_info {TYPE_1__ sta; } ;
struct sk_buff {int priority; scalar_t__ protocol; } ;
struct mac80211_qos_map {int qos_map; } ;
struct TYPE_4__ {scalar_t__ type; } ;
struct ieee80211_sub_if_data {scalar_t__ control_port_protocol; int qos_map; TYPE_2__ vif; } ;


 int IEEE80211_AC_BE ;
 scalar_t__ NL80211_IFTYPE_MESH_POINT ;
 scalar_t__ NL80211_IFTYPE_OCB ;
 int cfg80211_classify8021d (struct sk_buff*,int *) ;
 int ieee80211_downgrade_queue (struct ieee80211_sub_if_data*,struct sta_info*,struct sk_buff*) ;
 struct mac80211_qos_map* rcu_dereference (int ) ;

u16 __ieee80211_select_queue(struct ieee80211_sub_if_data *sdata,
        struct sta_info *sta, struct sk_buff *skb)
{
 struct mac80211_qos_map *qos_map;
 bool qos;


 if (sdata->vif.type == NL80211_IFTYPE_MESH_POINT ||
     sdata->vif.type == NL80211_IFTYPE_OCB)
  qos = 1;
 else if (sta)
  qos = sta->sta.wme;
 else
  qos = 0;

 if (!qos) {
  skb->priority = 0;
  return IEEE80211_AC_BE;
 }

 if (skb->protocol == sdata->control_port_protocol) {
  skb->priority = 7;
  goto downgrade;
 }



 qos_map = rcu_dereference(sdata->qos_map);
 skb->priority = cfg80211_classify8021d(skb, qos_map ?
            &qos_map->qos_map : ((void*)0));

 downgrade:
 return ieee80211_downgrade_queue(sdata, sta, skb);
}
