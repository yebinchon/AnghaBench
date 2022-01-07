
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct kcm_sock {int tx_wait; struct kcm_psock* tx_psock; struct kcm_mux* mux; } ;
struct TYPE_4__ {int unreserved; } ;
struct kcm_psock {TYPE_3__* sk; int psock_list; scalar_t__ done; int tx_stopped; TYPE_1__ stats; int * tx_kcm; } ;
struct kcm_mux {int lock; int psocks_cnt; } ;
struct TYPE_6__ {TYPE_2__* sk_socket; } ;
struct TYPE_5__ {int file; } ;


 int KCM_STATS_INCR (int ) ;
 scalar_t__ WARN_ON (int) ;
 int fput (int ) ;
 int kcm_psockp ;
 int kcm_update_tx_mux_stats (struct kcm_mux*,struct kcm_psock*) ;
 int kmem_cache_free (int ,struct kcm_psock*) ;
 int list_del (int *) ;
 int psock_now_avail (struct kcm_psock*) ;
 int smp_rmb () ;
 int sock_put (TYPE_3__*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void unreserve_psock(struct kcm_sock *kcm)
{
 struct kcm_psock *psock;
 struct kcm_mux *mux = kcm->mux;

 spin_lock_bh(&mux->lock);

 psock = kcm->tx_psock;

 if (WARN_ON(!psock)) {
  spin_unlock_bh(&mux->lock);
  return;
 }

 smp_rmb();

 kcm_update_tx_mux_stats(mux, psock);

 WARN_ON(kcm->tx_wait);

 kcm->tx_psock = ((void*)0);
 psock->tx_kcm = ((void*)0);
 KCM_STATS_INCR(psock->stats.unreserved);

 if (unlikely(psock->tx_stopped)) {
  if (psock->done) {

   list_del(&psock->psock_list);
   mux->psocks_cnt--;
   sock_put(psock->sk);
   fput(psock->sk->sk_socket->file);
   kmem_cache_free(kcm_psockp, psock);
  }



  spin_unlock_bh(&mux->lock);

  return;
 }

 psock_now_avail(psock);

 spin_unlock_bh(&mux->lock);
}
