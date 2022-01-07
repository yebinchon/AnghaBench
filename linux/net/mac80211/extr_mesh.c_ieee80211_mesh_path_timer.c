
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct ieee80211_sub_if_data {int work; TYPE_2__* local; } ;
struct TYPE_4__ {int mesh_path_timer; } ;
struct TYPE_6__ {TYPE_1__ mesh; } ;
struct TYPE_5__ {int hw; } ;


 struct ieee80211_sub_if_data* from_timer (int ,struct timer_list*,int ) ;
 int ieee80211_queue_work (int *,int *) ;
 struct ieee80211_sub_if_data* sdata ;
 TYPE_3__ u ;

__attribute__((used)) static void ieee80211_mesh_path_timer(struct timer_list *t)
{
 struct ieee80211_sub_if_data *sdata =
  from_timer(sdata, t, u.mesh.mesh_path_timer);

 ieee80211_queue_work(&sdata->local->hw, &sdata->work);
}
