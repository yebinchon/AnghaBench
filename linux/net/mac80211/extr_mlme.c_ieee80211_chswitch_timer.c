
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct TYPE_8__ {int chswitch_work; } ;
struct TYPE_9__ {TYPE_3__ mgd; } ;
struct ieee80211_sub_if_data {TYPE_4__ u; TYPE_2__* local; } ;
struct TYPE_6__ {int chswitch_timer; } ;
struct TYPE_10__ {TYPE_1__ mgd; } ;
struct TYPE_7__ {int hw; } ;


 struct ieee80211_sub_if_data* from_timer (int ,struct timer_list*,int ) ;
 int ieee80211_queue_work (int *,int *) ;
 struct ieee80211_sub_if_data* sdata ;
 TYPE_5__ u ;

__attribute__((used)) static void ieee80211_chswitch_timer(struct timer_list *t)
{
 struct ieee80211_sub_if_data *sdata =
  from_timer(sdata, t, u.mgd.chswitch_timer);

 ieee80211_queue_work(&sdata->local->hw, &sdata->u.mgd.chswitch_work);
}
