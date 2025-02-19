
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ vht_supported; } ;
struct ieee80211_supported_band {TYPE_4__ vht_cap; } ;
struct TYPE_10__ {int ecn; void* target; void* interval; } ;
struct TYPE_8__ {TYPE_2__* wiphy; } ;
struct fq {int memory_limit; int flows_cnt; int lock; } ;
struct ieee80211_local {int * cvars; TYPE_5__ cparams; TYPE_3__ hw; TYPE_1__* ops; struct fq fq; } ;
typedef enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;
struct TYPE_7__ {struct ieee80211_supported_band** bands; } ;
struct TYPE_6__ {int wake_tx_queue; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 void* MS2TIME (int) ;
 int NUM_NL80211_BANDS ;
 int codel_params_init (TYPE_5__*) ;
 int codel_vars_init (int *) ;
 int fq_init (struct fq*,int) ;
 int fq_reset (struct fq*,int ) ;
 int fq_skb_free_func ;
 int ieee80211_txq_set_params (struct ieee80211_local*) ;
 int * kcalloc (int,int,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int ieee80211_txq_setup_flows(struct ieee80211_local *local)
{
 struct fq *fq = &local->fq;
 int ret;
 int i;
 bool supp_vht = 0;
 enum nl80211_band band;

 if (!local->ops->wake_tx_queue)
  return 0;

 ret = fq_init(fq, 4096);
 if (ret)
  return ret;





 for (band = 0; band < NUM_NL80211_BANDS; band++) {
  struct ieee80211_supported_band *sband;

  sband = local->hw.wiphy->bands[band];
  if (!sband)
   continue;

  supp_vht = supp_vht || sband->vht_cap.vht_supported;
 }

 if (!supp_vht)
  fq->memory_limit = 4 << 20;

 codel_params_init(&local->cparams);
 local->cparams.interval = MS2TIME(100);
 local->cparams.target = MS2TIME(20);
 local->cparams.ecn = 1;

 local->cvars = kcalloc(fq->flows_cnt, sizeof(local->cvars[0]),
          GFP_KERNEL);
 if (!local->cvars) {
  spin_lock_bh(&fq->lock);
  fq_reset(fq, fq_skb_free_func);
  spin_unlock_bh(&fq->lock);
  return -ENOMEM;
 }

 for (i = 0; i < fq->flows_cnt; i++)
  codel_vars_init(&local->cvars[i]);

 ieee80211_txq_set_params(local);

 return 0;
}
