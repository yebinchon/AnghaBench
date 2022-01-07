
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {scalar_t__ sk_rcvlowat; int sk_rmem_alloc; } ;
struct sk_buff {unsigned int truesize; struct sock* sk; } ;
struct kcm_sock {int rx_psock; int rx_wait; struct kcm_mux* mux; } ;
struct kcm_mux {int rx_lock; } ;


 int atomic_sub (unsigned int,int *) ;
 int kcm_rcv_ready (struct kcm_sock*) ;
 struct kcm_sock* kcm_sk (struct sock*) ;
 int sk_mem_uncharge (struct sock*,unsigned int) ;
 scalar_t__ sk_rmem_alloc_get (struct sock*) ;
 int smp_mb__after_atomic () ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void kcm_rfree(struct sk_buff *skb)
{
 struct sock *sk = skb->sk;
 struct kcm_sock *kcm = kcm_sk(sk);
 struct kcm_mux *mux = kcm->mux;
 unsigned int len = skb->truesize;

 sk_mem_uncharge(sk, len);
 atomic_sub(len, &sk->sk_rmem_alloc);


 smp_mb__after_atomic();

 if (!kcm->rx_wait && !kcm->rx_psock &&
     sk_rmem_alloc_get(sk) < sk->sk_rcvlowat) {
  spin_lock_bh(&mux->rx_lock);
  kcm_rcv_ready(kcm);
  spin_unlock_bh(&mux->rx_lock);
 }
}
