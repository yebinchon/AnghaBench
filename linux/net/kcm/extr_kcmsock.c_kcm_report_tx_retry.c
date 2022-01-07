
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kcm_sock {struct kcm_mux* mux; } ;
struct TYPE_2__ {int tx_retries; } ;
struct kcm_mux {int lock; TYPE_1__ stats; } ;


 int KCM_STATS_INCR (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void kcm_report_tx_retry(struct kcm_sock *kcm)
{
 struct kcm_mux *mux = kcm->mux;

 spin_lock_bh(&mux->lock);
 KCM_STATS_INCR(mux->stats.tx_retries);
 spin_unlock_bh(&mux->lock);
}
