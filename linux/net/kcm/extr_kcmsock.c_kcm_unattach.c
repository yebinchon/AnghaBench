
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sock {TYPE_3__* sk_socket; int sk_callback_lock; int sk_state_change; int sk_write_space; int sk_data_ready; int * sk_user_data; } ;
struct kcm_psock {int done; int psock_list; int psock_avail_list; int tx_stopped; TYPE_2__* tx_kcm; int strp; int stats; int bpf_prog; int * ready_rx_msg; int psock_ready_list; int rx_kcm; int save_state_change; int save_write_space; int save_data_ready; struct kcm_mux* mux; struct sock* sk; } ;
struct TYPE_4__ {int psock_unattach_rsvd; int psock_unattach; int rx_ready_drops; } ;
struct kcm_mux {int lock; int psocks_cnt; TYPE_1__ stats; int aggregate_strp_stats; int aggregate_psock_stats; int rx_lock; } ;
struct TYPE_6__ {int file; } ;
struct TYPE_5__ {int tx_work; } ;


 int EPIPE ;
 int KCM_STATS_INCR (int ) ;
 scalar_t__ WARN_ON (int ) ;
 int aggregate_psock_stats (int *,int *) ;
 int bpf_prog_put (int ) ;
 int fput (int ) ;
 int kcm_abort_tx_psock (struct kcm_psock*,int ,int) ;
 int kcm_psockp ;
 int kcm_wq ;
 int kfree_skb (int *) ;
 int kmem_cache_free (int ,struct kcm_psock*) ;
 int list_del (int *) ;
 int lock_sock (struct sock*) ;
 int queue_work (int ,int *) ;
 int release_sock (struct sock*) ;
 int save_strp_stats (int *,int *) ;
 int smp_mb () ;
 int sock_put (struct sock*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int strp_done (int *) ;
 int strp_stop (int *) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static void kcm_unattach(struct kcm_psock *psock)
{
 struct sock *csk = psock->sk;
 struct kcm_mux *mux = psock->mux;

 lock_sock(csk);




 write_lock_bh(&csk->sk_callback_lock);
 csk->sk_user_data = ((void*)0);
 csk->sk_data_ready = psock->save_data_ready;
 csk->sk_write_space = psock->save_write_space;
 csk->sk_state_change = psock->save_state_change;
 strp_stop(&psock->strp);

 if (WARN_ON(psock->rx_kcm)) {
  write_unlock_bh(&csk->sk_callback_lock);
  release_sock(csk);
  return;
 }

 spin_lock_bh(&mux->rx_lock);




 if (psock->ready_rx_msg) {
  list_del(&psock->psock_ready_list);
  kfree_skb(psock->ready_rx_msg);
  psock->ready_rx_msg = ((void*)0);
  KCM_STATS_INCR(mux->stats.rx_ready_drops);
 }

 spin_unlock_bh(&mux->rx_lock);

 write_unlock_bh(&csk->sk_callback_lock);


 release_sock(csk);
 strp_done(&psock->strp);
 lock_sock(csk);

 bpf_prog_put(psock->bpf_prog);

 spin_lock_bh(&mux->lock);

 aggregate_psock_stats(&psock->stats, &mux->aggregate_psock_stats);
 save_strp_stats(&psock->strp, &mux->aggregate_strp_stats);

 KCM_STATS_INCR(mux->stats.psock_unattach);

 if (psock->tx_kcm) {




  KCM_STATS_INCR(mux->stats.psock_unattach_rsvd);
  spin_unlock_bh(&mux->lock);





  kcm_abort_tx_psock(psock, EPIPE, 0);

  spin_lock_bh(&mux->lock);
  if (!psock->tx_kcm) {

   goto no_reserved;
  }
  psock->done = 1;


  smp_mb();


  queue_work(kcm_wq, &psock->tx_kcm->tx_work);
  spin_unlock_bh(&mux->lock);
 } else {
no_reserved:
  if (!psock->tx_stopped)
   list_del(&psock->psock_avail_list);
  list_del(&psock->psock_list);
  mux->psocks_cnt--;
  spin_unlock_bh(&mux->lock);

  sock_put(csk);
  fput(csk->sk_socket->file);
  kmem_cache_free(kcm_psockp, psock);
 }

 release_sock(csk);
}
