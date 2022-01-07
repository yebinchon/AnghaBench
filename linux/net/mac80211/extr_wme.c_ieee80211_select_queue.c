
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int const u8 ;
typedef int u16 ;
struct sta_info {int dummy; } ;
struct sk_buff {int len; int const* data; scalar_t__ priority; } ;
struct TYPE_13__ {int const* bssid; } ;
struct TYPE_12__ {int const* remote_addr; } ;
struct TYPE_11__ {int sta; } ;
struct TYPE_14__ {TYPE_6__ mgd; TYPE_5__ wds; TYPE_4__ vlan; } ;
struct TYPE_10__ {int type; } ;
struct ieee80211_sub_if_data {TYPE_7__ u; TYPE_3__ vif; struct ieee80211_local* local; } ;
struct TYPE_9__ {scalar_t__ queues; } ;
struct ieee80211_local {TYPE_2__ hw; TYPE_1__* ops; } ;
struct TYPE_8__ {scalar_t__ wake_tx_queue; } ;


 scalar_t__ IEEE80211_NUM_ACS ;





 int __ieee80211_select_queue (struct ieee80211_sub_if_data*,struct sta_info*,struct sk_buff*) ;
 int is_multicast_ether_addr (int const*) ;
 struct sta_info* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct sta_info* sta_info_get (struct ieee80211_sub_if_data*,int const*) ;

u16 ieee80211_select_queue(struct ieee80211_sub_if_data *sdata,
      struct sk_buff *skb)
{
 struct ieee80211_local *local = sdata->local;
 struct sta_info *sta = ((void*)0);
 const u8 *ra = ((void*)0);
 u16 ret;


 if (local->ops->wake_tx_queue)
  return 0;

 if (local->hw.queues < IEEE80211_NUM_ACS || skb->len < 6) {
  skb->priority = 0;
  return 0;
 }

 rcu_read_lock();
 switch (sdata->vif.type) {
 case 130:
  sta = rcu_dereference(sdata->u.vlan.sta);
  if (sta)
   break;

 case 131:
  ra = skb->data;
  break;
 case 128:
  ra = sdata->u.wds.remote_addr;
  break;
 case 129:

  sta = sta_info_get(sdata, skb->data);
  if (sta)
   break;

  ra = sdata->u.mgd.bssid;
  break;
 case 132:
  ra = skb->data;
  break;
 default:
  break;
 }

 if (!sta && ra && !is_multicast_ether_addr(ra))
  sta = sta_info_get(sdata, ra);

 ret = __ieee80211_select_queue(sdata, sta, skb);

 rcu_read_unlock();
 return ret;
}
