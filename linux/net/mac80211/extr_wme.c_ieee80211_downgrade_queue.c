
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct sta_info {scalar_t__ reserved_tid; } ;
struct sk_buff {size_t priority; } ;
struct ieee80211_if_managed {TYPE_1__* tx_tspec; } ;
struct TYPE_4__ {struct ieee80211_if_managed mgd; } ;
struct ieee80211_sub_if_data {int wmm_acm; TYPE_2__ u; } ;
struct TYPE_3__ {scalar_t__ up; scalar_t__ admitted_time; } ;


 int BIT (size_t) ;
 scalar_t__ ieee80211_fix_reserved_tid (scalar_t__) ;
 int* ieee802_1d_to_ac ;
 scalar_t__ wme_downgrade_ac (struct sk_buff*) ;

__attribute__((used)) static u16 ieee80211_downgrade_queue(struct ieee80211_sub_if_data *sdata,
         struct sta_info *sta, struct sk_buff *skb)
{
 struct ieee80211_if_managed *ifmgd = &sdata->u.mgd;


 while (sdata->wmm_acm & BIT(skb->priority)) {
  int ac = ieee802_1d_to_ac[skb->priority];

  if (ifmgd->tx_tspec[ac].admitted_time &&
      skb->priority == ifmgd->tx_tspec[ac].up)
   return ac;

  if (wme_downgrade_ac(skb)) {






   break;
  }
 }


 if (sta && sta->reserved_tid == skb->priority)
  skb->priority = ieee80211_fix_reserved_tid(skb->priority);


 return ieee802_1d_to_ac[skb->priority];
}
