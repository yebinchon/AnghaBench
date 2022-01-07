
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int chandef; } ;
struct TYPE_7__ {TYPE_4__ bss_conf; } ;
struct ieee80211_sub_if_data {TYPE_3__ vif; TYPE_2__* local; } ;
struct TYPE_5__ {int wiphy; } ;
struct TYPE_6__ {TYPE_1__ hw; } ;


 int GFP_ATOMIC ;
 int NL80211_IFTYPE_MESH_POINT ;
 int cfg80211_chandef_dfs_required (int ,int *,int ) ;
 int cfg80211_radar_event (int ,int *,int ) ;

__attribute__((used)) static void ieee80211_mesh_csa_mark_radar(struct ieee80211_sub_if_data *sdata)
{
 int err;




 err = cfg80211_chandef_dfs_required(sdata->local->hw.wiphy,
         &sdata->vif.bss_conf.chandef,
         NL80211_IFTYPE_MESH_POINT);
 if (err > 0)
  cfg80211_radar_event(sdata->local->hw.wiphy,
         &sdata->vif.bss_conf.chandef, GFP_ATOMIC);
}
