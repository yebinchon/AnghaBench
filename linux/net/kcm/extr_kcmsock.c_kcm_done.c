
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_receive_queue; } ;
struct kcm_sock {int done; int rx_disabled; int rx_wait; struct sock sk; int kcm_sock_list; int wait_rx_list; scalar_t__ rx_psock; struct kcm_mux* mux; } ;
struct kcm_mux {int kcm_socks_cnt; int lock; int rx_lock; } ;


 scalar_t__ WARN_ON (int) ;
 int list_del (int *) ;
 int release_mux (struct kcm_mux*) ;
 int requeue_rx_msgs (struct kcm_mux*,int *) ;
 int sk_rmem_alloc_get (struct sock*) ;
 int sock_put (struct sock*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void kcm_done(struct kcm_sock *kcm)
{
 struct kcm_mux *mux = kcm->mux;
 struct sock *sk = &kcm->sk;
 int socks_cnt;

 spin_lock_bh(&mux->rx_lock);
 if (kcm->rx_psock) {

  WARN_ON(kcm->done);
  kcm->rx_disabled = 1;
  kcm->done = 1;
  spin_unlock_bh(&mux->rx_lock);
  return;
 }

 if (kcm->rx_wait) {
  list_del(&kcm->wait_rx_list);
  kcm->rx_wait = 0;
 }

 requeue_rx_msgs(mux, &sk->sk_receive_queue);

 spin_unlock_bh(&mux->rx_lock);

 if (WARN_ON(sk_rmem_alloc_get(sk)))
  return;


 spin_lock_bh(&mux->lock);

 list_del(&kcm->kcm_sock_list);
 mux->kcm_socks_cnt--;
 socks_cnt = mux->kcm_socks_cnt;

 spin_unlock_bh(&mux->lock);

 if (!socks_cnt) {

  release_mux(mux);
 }

 WARN_ON(kcm->rx_wait);

 sock_put(&kcm->sk);
}
