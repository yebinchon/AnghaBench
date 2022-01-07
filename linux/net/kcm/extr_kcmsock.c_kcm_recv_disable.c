
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sk_receive_queue; } ;
struct kcm_sock {int rx_disabled; int rx_wait; TYPE_1__ sk; int wait_rx_list; int rx_psock; struct kcm_mux* mux; } ;
struct kcm_mux {int rx_lock; } ;


 int list_del (int *) ;
 int requeue_rx_msgs (struct kcm_mux*,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void kcm_recv_disable(struct kcm_sock *kcm)
{
 struct kcm_mux *mux = kcm->mux;

 if (kcm->rx_disabled)
  return;

 spin_lock_bh(&mux->rx_lock);

 kcm->rx_disabled = 1;


 if (!kcm->rx_psock) {
  if (kcm->rx_wait) {
   list_del(&kcm->wait_rx_list);
   kcm->rx_wait = 0;
  }

  requeue_rx_msgs(mux, &kcm->sk.sk_receive_queue);
 }

 spin_unlock_bh(&mux->rx_lock);
}
