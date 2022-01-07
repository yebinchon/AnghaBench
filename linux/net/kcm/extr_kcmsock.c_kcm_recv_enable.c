
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kcm_sock {scalar_t__ rx_disabled; struct kcm_mux* mux; } ;
struct kcm_mux {int rx_lock; } ;


 int kcm_rcv_ready (struct kcm_sock*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void kcm_recv_enable(struct kcm_sock *kcm)
{
 struct kcm_mux *mux = kcm->mux;

 if (!kcm->rx_disabled)
  return;

 spin_lock_bh(&mux->rx_lock);

 kcm->rx_disabled = 0;
 kcm_rcv_ready(kcm);

 spin_unlock_bh(&mux->rx_lock);
}
