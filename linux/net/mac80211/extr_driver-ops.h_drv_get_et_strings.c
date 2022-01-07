
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct ieee80211_sub_if_data {int vif; struct ieee80211_local* local; } ;
struct ieee80211_local {int hw; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* get_et_strings ) (int *,int *,int ,int *) ;} ;


 int stub1 (int *,int *,int ,int *) ;
 int trace_drv_get_et_strings (struct ieee80211_local*,int ) ;
 int trace_drv_return_void (struct ieee80211_local*) ;

__attribute__((used)) static inline void drv_get_et_strings(struct ieee80211_sub_if_data *sdata,
          u32 sset, u8 *data)
{
 struct ieee80211_local *local = sdata->local;
 if (local->ops->get_et_strings) {
  trace_drv_get_et_strings(local, sset);
  local->ops->get_et_strings(&local->hw, &sdata->vif, sset, data);
  trace_drv_return_void(local);
 }
}
