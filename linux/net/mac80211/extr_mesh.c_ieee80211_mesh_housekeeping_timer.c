
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct ieee80211_if_mesh {int wrkq_flags; } ;
struct TYPE_5__ {struct ieee80211_if_mesh mesh; } ;
struct ieee80211_sub_if_data {int work; TYPE_2__ u; struct ieee80211_local* local; } ;
struct ieee80211_local {int hw; } ;
struct TYPE_4__ {int housekeeping_timer; } ;
struct TYPE_6__ {TYPE_1__ mesh; } ;


 int MESH_WORK_HOUSEKEEPING ;
 struct ieee80211_sub_if_data* from_timer (int ,struct timer_list*,int ) ;
 int ieee80211_queue_work (int *,int *) ;
 struct ieee80211_sub_if_data* sdata ;
 int set_bit (int ,int *) ;
 TYPE_3__ u ;

__attribute__((used)) static void ieee80211_mesh_housekeeping_timer(struct timer_list *t)
{
 struct ieee80211_sub_if_data *sdata =
  from_timer(sdata, t, u.mesh.housekeeping_timer);
 struct ieee80211_local *local = sdata->local;
 struct ieee80211_if_mesh *ifmsh = &sdata->u.mesh;

 set_bit(MESH_WORK_HOUSEKEEPING, &ifmsh->wrkq_flags);

 ieee80211_queue_work(&local->hw, &sdata->work);
}
