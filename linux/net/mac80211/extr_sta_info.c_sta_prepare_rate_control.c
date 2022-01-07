
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sta_info {int rate_ctrl_priv; int rate_ctrl; } ;
struct ieee80211_local {int rate_ctrl; int hw; } ;
typedef int gfp_t ;


 int ENOMEM ;
 int HAS_RATE_CONTROL ;
 scalar_t__ ieee80211_hw_check (int *,int ) ;
 int rate_control_alloc_sta (int ,struct sta_info*,int ) ;

__attribute__((used)) static int sta_prepare_rate_control(struct ieee80211_local *local,
        struct sta_info *sta, gfp_t gfp)
{
 if (ieee80211_hw_check(&local->hw, HAS_RATE_CONTROL))
  return 0;

 sta->rate_ctrl = local->rate_ctrl;
 sta->rate_ctrl_priv = rate_control_alloc_sta(sta->rate_ctrl,
           sta, gfp);
 if (!sta->rate_ctrl_priv)
  return -ENOMEM;

 return 0;
}
