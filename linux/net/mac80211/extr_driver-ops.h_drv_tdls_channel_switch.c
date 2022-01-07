
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct sk_buff {int dummy; } ;
struct ieee80211_sub_if_data {int vif; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_local {int hw; TYPE_1__* ops; } ;
struct cfg80211_chan_def {int dummy; } ;
struct TYPE_2__ {int (* tdls_channel_switch ) (int *,int *,struct ieee80211_sta*,int ,struct cfg80211_chan_def*,struct sk_buff*,int ) ;} ;


 int EIO ;
 int EOPNOTSUPP ;
 int check_sdata_in_driver (struct ieee80211_sub_if_data*) ;
 int might_sleep () ;
 int stub1 (int *,int *,struct ieee80211_sta*,int ,struct cfg80211_chan_def*,struct sk_buff*,int ) ;
 int trace_drv_return_int (struct ieee80211_local*,int) ;
 int trace_drv_tdls_channel_switch (struct ieee80211_local*,struct ieee80211_sub_if_data*,struct ieee80211_sta*,int ,struct cfg80211_chan_def*) ;

__attribute__((used)) static inline int
drv_tdls_channel_switch(struct ieee80211_local *local,
   struct ieee80211_sub_if_data *sdata,
   struct ieee80211_sta *sta, u8 oper_class,
   struct cfg80211_chan_def *chandef,
   struct sk_buff *tmpl_skb, u32 ch_sw_tm_ie)
{
 int ret;

 might_sleep();
 if (!check_sdata_in_driver(sdata))
  return -EIO;

 if (!local->ops->tdls_channel_switch)
  return -EOPNOTSUPP;

 trace_drv_tdls_channel_switch(local, sdata, sta, oper_class, chandef);
 ret = local->ops->tdls_channel_switch(&local->hw, &sdata->vif, sta,
           oper_class, chandef, tmpl_skb,
           ch_sw_tm_ie);
 trace_drv_return_int(local, ret);
 return ret;
}
