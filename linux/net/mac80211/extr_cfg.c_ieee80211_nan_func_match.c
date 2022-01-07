
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ieee80211_vif {scalar_t__ type; } ;
struct TYPE_3__ {int func_lock; int function_inst_ids; } ;
struct TYPE_4__ {TYPE_1__ nan; } ;
struct ieee80211_sub_if_data {TYPE_2__ u; } ;
struct cfg80211_nan_match_params {int cookie; int inst_id; } ;
struct cfg80211_nan_func {int cookie; } ;
typedef int gfp_t ;


 scalar_t__ NL80211_IFTYPE_NAN ;
 scalar_t__ WARN_ON (int) ;
 int cfg80211_nan_match (int ,struct cfg80211_nan_match_params*,int ) ;
 struct cfg80211_nan_func* idr_find (int *,int ) ;
 int ieee80211_vif_to_wdev (struct ieee80211_vif*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 struct ieee80211_sub_if_data* vif_to_sdata (struct ieee80211_vif*) ;

void ieee80211_nan_func_match(struct ieee80211_vif *vif,
         struct cfg80211_nan_match_params *match,
         gfp_t gfp)
{
 struct ieee80211_sub_if_data *sdata = vif_to_sdata(vif);
 struct cfg80211_nan_func *func;

 if (WARN_ON(vif->type != NL80211_IFTYPE_NAN))
  return;

 spin_lock_bh(&sdata->u.nan.func_lock);

 func = idr_find(&sdata->u.nan.function_inst_ids, match->inst_id);
 if (WARN_ON(!func)) {
  spin_unlock_bh(&sdata->u.nan.func_lock);
  return;
 }
 match->cookie = func->cookie;

 spin_unlock_bh(&sdata->u.nan.func_lock);

 cfg80211_nan_match(ieee80211_vif_to_wdev(vif), match, gfp);
}
