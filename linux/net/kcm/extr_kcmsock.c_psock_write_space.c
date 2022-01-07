
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_callback_lock; scalar_t__ sk_user_data; } ;
struct kcm_sock {int tx_stopped; int tx_work; } ;
struct kcm_psock {struct kcm_sock* tx_kcm; struct kcm_mux* mux; } ;
struct kcm_mux {int lock; } ;


 int kcm_wq ;
 int queue_work (int ,int *) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void psock_write_space(struct sock *sk)
{
 struct kcm_psock *psock;
 struct kcm_mux *mux;
 struct kcm_sock *kcm;

 read_lock_bh(&sk->sk_callback_lock);

 psock = (struct kcm_psock *)sk->sk_user_data;
 if (unlikely(!psock))
  goto out;
 mux = psock->mux;

 spin_lock_bh(&mux->lock);


 kcm = psock->tx_kcm;
 if (kcm && !unlikely(kcm->tx_stopped))
  queue_work(kcm_wq, &kcm->tx_work);

 spin_unlock_bh(&mux->lock);
out:
 read_unlock_bh(&sk->sk_callback_lock);
}
