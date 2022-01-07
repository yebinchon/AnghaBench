
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct ieee80211_vif {scalar_t__ type; } ;
struct TYPE_3__ {int func_lock; int function_inst_ids; } ;
struct TYPE_4__ {TYPE_1__ nan; } ;
struct ieee80211_sub_if_data {TYPE_2__ u; } ;
struct cfg80211_nan_func {int cookie; } ;
typedef int gfp_t ;
typedef enum nl80211_nan_func_term_reason { ____Placeholder_nl80211_nan_func_term_reason } nl80211_nan_func_term_reason ;


 scalar_t__ NL80211_IFTYPE_NAN ;
 scalar_t__ WARN_ON (int) ;
 int cfg80211_free_nan_func (struct cfg80211_nan_func*) ;
 int cfg80211_nan_func_terminated (int ,int ,int,int ,int ) ;
 struct cfg80211_nan_func* idr_find (int *,int ) ;
 int idr_remove (int *,int ) ;
 int ieee80211_vif_to_wdev (struct ieee80211_vif*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 struct ieee80211_sub_if_data* vif_to_sdata (struct ieee80211_vif*) ;

void ieee80211_nan_func_terminated(struct ieee80211_vif *vif,
       u8 inst_id,
       enum nl80211_nan_func_term_reason reason,
       gfp_t gfp)
{
 struct ieee80211_sub_if_data *sdata = vif_to_sdata(vif);
 struct cfg80211_nan_func *func;
 u64 cookie;

 if (WARN_ON(vif->type != NL80211_IFTYPE_NAN))
  return;

 spin_lock_bh(&sdata->u.nan.func_lock);

 func = idr_find(&sdata->u.nan.function_inst_ids, inst_id);
 if (WARN_ON(!func)) {
  spin_unlock_bh(&sdata->u.nan.func_lock);
  return;
 }

 cookie = func->cookie;
 idr_remove(&sdata->u.nan.function_inst_ids, inst_id);

 spin_unlock_bh(&sdata->u.nan.func_lock);

 cfg80211_free_nan_func(func);

 cfg80211_nan_func_terminated(ieee80211_vif_to_wdev(vif), inst_id,
         reason, cookie, gfp);
}
