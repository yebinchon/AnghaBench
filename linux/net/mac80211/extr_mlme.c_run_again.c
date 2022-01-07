
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int expires; } ;
struct TYPE_5__ {TYPE_3__ timer; } ;
struct TYPE_6__ {TYPE_1__ mgd; } ;
struct ieee80211_sub_if_data {TYPE_2__ u; } ;


 int mod_timer (TYPE_3__*,unsigned long) ;
 int sdata_assert_lock (struct ieee80211_sub_if_data*) ;
 scalar_t__ time_before (unsigned long,int ) ;
 int timer_pending (TYPE_3__*) ;

__attribute__((used)) static void run_again(struct ieee80211_sub_if_data *sdata,
        unsigned long timeout)
{
 sdata_assert_lock(sdata);

 if (!timer_pending(&sdata->u.mgd.timer) ||
     time_before(timeout, sdata->u.mgd.timer.expires))
  mod_timer(&sdata->u.mgd.timer, timeout);
}
