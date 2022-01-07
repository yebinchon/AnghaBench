
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int dummy; } ;
struct TYPE_3__ {int tx_aborts; } ;
struct kcm_psock {int tx_stopped; TYPE_2__* tx_kcm; int psock_avail_list; TYPE_1__ stats; struct kcm_mux* mux; struct sock* sk; } ;
struct kcm_mux {int lock; } ;
struct TYPE_4__ {int tx_work; } ;


 int KCM_STATS_INCR (int ) ;
 int kcm_wq ;
 int list_del (int *) ;
 int queue_work (int ,int *) ;
 int report_csk_error (struct sock*,int) ;
 int smp_mb () ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void kcm_abort_tx_psock(struct kcm_psock *psock, int err,
          bool wakeup_kcm)
{
 struct sock *csk = psock->sk;
 struct kcm_mux *mux = psock->mux;



 spin_lock_bh(&mux->lock);

 if (psock->tx_stopped) {
  spin_unlock_bh(&mux->lock);
  return;
 }

 psock->tx_stopped = 1;
 KCM_STATS_INCR(psock->stats.tx_aborts);

 if (!psock->tx_kcm) {

  list_del(&psock->psock_avail_list);
 } else if (wakeup_kcm) {





  smp_mb();

  queue_work(kcm_wq, &psock->tx_kcm->tx_work);
 }

 spin_unlock_bh(&mux->lock);


 report_csk_error(csk, err);
}
