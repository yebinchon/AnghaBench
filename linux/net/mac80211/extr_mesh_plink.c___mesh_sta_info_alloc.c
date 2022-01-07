
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_5__ {int wme; int aid; } ;
struct sta_info {TYPE_2__ sta; TYPE_1__* mesh; } ;
struct ieee80211_sub_if_data {TYPE_3__* local; } ;
struct TYPE_6__ {scalar_t__ num_sta; } ;
struct TYPE_4__ {int plink_state; } ;


 int GFP_KERNEL ;
 int IEEE80211_STA_ASSOC ;
 int IEEE80211_STA_AUTH ;
 int IEEE80211_STA_AUTHORIZED ;
 scalar_t__ MESH_MAX_PLINKS ;
 int NL80211_PLINK_LISTEN ;
 int mesh_allocate_aid (struct ieee80211_sub_if_data*) ;
 struct sta_info* sta_info_alloc (struct ieee80211_sub_if_data*,int *,int ) ;
 int sta_info_pre_move_state (struct sta_info*,int ) ;

__attribute__((used)) static struct sta_info *
__mesh_sta_info_alloc(struct ieee80211_sub_if_data *sdata, u8 *hw_addr)
{
 struct sta_info *sta;
 int aid;

 if (sdata->local->num_sta >= MESH_MAX_PLINKS)
  return ((void*)0);

 aid = mesh_allocate_aid(sdata);
 if (aid < 0)
  return ((void*)0);

 sta = sta_info_alloc(sdata, hw_addr, GFP_KERNEL);
 if (!sta)
  return ((void*)0);

 sta->mesh->plink_state = NL80211_PLINK_LISTEN;
 sta->sta.wme = 1;
 sta->sta.aid = aid;

 sta_info_pre_move_state(sta, IEEE80211_STA_AUTH);
 sta_info_pre_move_state(sta, IEEE80211_STA_ASSOC);
 sta_info_pre_move_state(sta, IEEE80211_STA_AUTHORIZED);

 return sta;
}
