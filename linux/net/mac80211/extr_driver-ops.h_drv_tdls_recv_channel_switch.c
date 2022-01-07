
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_tdls_ch_sw_params {int dummy; } ;
struct ieee80211_sub_if_data {int vif; } ;
struct ieee80211_local {int hw; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* tdls_recv_channel_switch ) (int *,int *,struct ieee80211_tdls_ch_sw_params*) ;} ;


 int stub1 (int *,int *,struct ieee80211_tdls_ch_sw_params*) ;
 int trace_drv_return_void (struct ieee80211_local*) ;
 int trace_drv_tdls_recv_channel_switch (struct ieee80211_local*,struct ieee80211_sub_if_data*,struct ieee80211_tdls_ch_sw_params*) ;

__attribute__((used)) static inline void
drv_tdls_recv_channel_switch(struct ieee80211_local *local,
        struct ieee80211_sub_if_data *sdata,
        struct ieee80211_tdls_ch_sw_params *params)
{
 trace_drv_tdls_recv_channel_switch(local, sdata, params);
 if (local->ops->tdls_recv_channel_switch)
  local->ops->tdls_recv_channel_switch(&local->hw, &sdata->vif,
           params);
 trace_drv_return_void(local);
}
