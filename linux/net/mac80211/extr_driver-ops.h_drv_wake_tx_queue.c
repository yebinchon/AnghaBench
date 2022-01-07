
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int vif; } ;
struct txq_info {TYPE_2__ txq; } ;
struct ieee80211_sub_if_data {int dummy; } ;
struct ieee80211_local {int hw; TYPE_1__* ops; scalar_t__ in_reconfig; } ;
struct TYPE_3__ {int (* wake_tx_queue ) (int *,TYPE_2__*) ;} ;


 int check_sdata_in_driver (struct ieee80211_sub_if_data*) ;
 int stub1 (int *,TYPE_2__*) ;
 int trace_drv_wake_tx_queue (struct ieee80211_local*,struct ieee80211_sub_if_data*,struct txq_info*) ;
 struct ieee80211_sub_if_data* vif_to_sdata (int ) ;

__attribute__((used)) static inline void drv_wake_tx_queue(struct ieee80211_local *local,
         struct txq_info *txq)
{
 struct ieee80211_sub_if_data *sdata = vif_to_sdata(txq->txq.vif);

 if (local->in_reconfig)
  return;

 if (!check_sdata_in_driver(sdata))
  return;

 trace_drv_wake_tx_queue(local, sdata, txq);
 local->ops->wake_tx_queue(&local->hw, &txq->txq);
}
