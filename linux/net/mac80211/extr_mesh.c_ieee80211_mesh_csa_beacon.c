
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mesh_csa_settings {int settings; } ;
struct TYPE_4__ {int mtx; } ;
struct ieee80211_if_mesh {int csa; } ;
struct TYPE_3__ {struct ieee80211_if_mesh mesh; } ;
struct ieee80211_sub_if_data {TYPE_2__ wdev; TYPE_1__ u; } ;
struct cfg80211_csa_settings {int dummy; } ;


 int BSS_CHANGED_BEACON ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int RCU_INIT_POINTER (int ,int *) ;
 int ieee80211_mesh_rebuild_beacon (struct ieee80211_sub_if_data*) ;
 int kfree_rcu (struct mesh_csa_settings*,int ) ;
 struct mesh_csa_settings* kmalloc (int,int ) ;
 int lockdep_assert_held (int *) ;
 int memcpy (int *,struct cfg80211_csa_settings*,int) ;
 int rcu_assign_pointer (int ,struct mesh_csa_settings*) ;
 struct mesh_csa_settings* rcu_dereference (int ) ;
 int rcu_head ;

int ieee80211_mesh_csa_beacon(struct ieee80211_sub_if_data *sdata,
         struct cfg80211_csa_settings *csa_settings)
{
 struct ieee80211_if_mesh *ifmsh = &sdata->u.mesh;
 struct mesh_csa_settings *tmp_csa_settings;
 int ret = 0;

 lockdep_assert_held(&sdata->wdev.mtx);

 tmp_csa_settings = kmalloc(sizeof(*tmp_csa_settings),
       GFP_ATOMIC);
 if (!tmp_csa_settings)
  return -ENOMEM;

 memcpy(&tmp_csa_settings->settings, csa_settings,
        sizeof(struct cfg80211_csa_settings));

 rcu_assign_pointer(ifmsh->csa, tmp_csa_settings);

 ret = ieee80211_mesh_rebuild_beacon(sdata);
 if (ret) {
  tmp_csa_settings = rcu_dereference(ifmsh->csa);
  RCU_INIT_POINTER(ifmsh->csa, ((void*)0));
  kfree_rcu(tmp_csa_settings, rcu_head);
  return ret;
 }

 return BSS_CHANGED_BEACON;
}
