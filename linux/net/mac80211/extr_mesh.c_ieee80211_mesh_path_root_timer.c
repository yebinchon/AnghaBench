
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct ieee80211_if_mesh {int wrkq_flags; } ;
struct TYPE_6__ {struct ieee80211_if_mesh mesh; } ;
struct ieee80211_sub_if_data {int work; TYPE_3__* local; TYPE_2__ u; } ;
struct TYPE_5__ {int mesh_path_root_timer; } ;
struct TYPE_8__ {TYPE_1__ mesh; } ;
struct TYPE_7__ {int hw; } ;


 int MESH_WORK_ROOT ;
 struct ieee80211_sub_if_data* from_timer (int ,struct timer_list*,int ) ;
 int ieee80211_queue_work (int *,int *) ;
 struct ieee80211_sub_if_data* sdata ;
 int set_bit (int ,int *) ;
 TYPE_4__ u ;

__attribute__((used)) static void ieee80211_mesh_path_root_timer(struct timer_list *t)
{
 struct ieee80211_sub_if_data *sdata =
  from_timer(sdata, t, u.mesh.mesh_path_root_timer);
 struct ieee80211_if_mesh *ifmsh = &sdata->u.mesh;

 set_bit(MESH_WORK_ROOT, &ifmsh->wrkq_flags);

 ieee80211_queue_work(&sdata->local->hw, &sdata->work);
}
