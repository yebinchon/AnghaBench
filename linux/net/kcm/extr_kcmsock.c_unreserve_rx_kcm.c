
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sk_receive_queue; } ;
struct kcm_sock {int done; int rx_disabled; TYPE_1__ sk; int done_work; int * rx_psock; } ;
struct kcm_psock {struct kcm_sock* rx_kcm; struct kcm_mux* mux; } ;
struct kcm_mux {int rx_lock; } ;


 int INIT_WORK (int *,int ) ;
 int kcm_done_work ;
 int kcm_rcv_ready (struct kcm_sock*) ;
 int requeue_rx_msgs (struct kcm_mux*,int *) ;
 int schedule_work (int *) ;
 int sk_rmem_alloc_get (TYPE_1__*) ;
 int smp_mb () ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void unreserve_rx_kcm(struct kcm_psock *psock,
        bool rcv_ready)
{
 struct kcm_sock *kcm = psock->rx_kcm;
 struct kcm_mux *mux = psock->mux;

 if (!kcm)
  return;

 spin_lock_bh(&mux->rx_lock);

 psock->rx_kcm = ((void*)0);
 kcm->rx_psock = ((void*)0);




 smp_mb();

 if (unlikely(kcm->done)) {
  spin_unlock_bh(&mux->rx_lock);




  INIT_WORK(&kcm->done_work, kcm_done_work);
  schedule_work(&kcm->done_work);
  return;
 }

 if (unlikely(kcm->rx_disabled)) {
  requeue_rx_msgs(mux, &kcm->sk.sk_receive_queue);
 } else if (rcv_ready || unlikely(!sk_rmem_alloc_get(&kcm->sk))) {



  kcm_rcv_ready(kcm);
 }
 spin_unlock_bh(&mux->rx_lock);
}
