
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct sock {int sk_rcvbuf; int sk_rmem_alloc; int sk_state; } ;
struct nr_sock {int state; int condition; int vr; int vl; } ;


 int NR_COND_ACK_PENDING ;
 int NR_COND_OWN_RX_BUSY ;
 int NR_INFOACK ;


 int SOCK_DEAD ;
 int SOCK_DESTROY ;
 int TCP_LISTEN ;
 int atomic_read (int *) ;
 int bh_lock_sock (struct sock*) ;
 int bh_unlock_sock (struct sock*) ;
 struct sock* from_timer (int ,struct timer_list*,int ) ;
 int nr_destroy_socket (struct sock*) ;
 struct nr_sock* nr_sk (struct sock*) ;
 int nr_start_heartbeat (struct sock*) ;
 int nr_write_internal (struct sock*,int ) ;
 struct sock* sk ;
 int sk_timer ;
 int sock_flag (struct sock*,int ) ;
 int sock_hold (struct sock*) ;
 int sock_put (struct sock*) ;

__attribute__((used)) static void nr_heartbeat_expiry(struct timer_list *t)
{
 struct sock *sk = from_timer(sk, t, sk_timer);
 struct nr_sock *nr = nr_sk(sk);

 bh_lock_sock(sk);
 switch (nr->state) {
 case 129:


  if (sock_flag(sk, SOCK_DESTROY) ||
      (sk->sk_state == TCP_LISTEN && sock_flag(sk, SOCK_DEAD))) {
   sock_hold(sk);
   bh_unlock_sock(sk);
   nr_destroy_socket(sk);
   sock_put(sk);
   return;
  }
  break;

 case 128:



  if (atomic_read(&sk->sk_rmem_alloc) < (sk->sk_rcvbuf / 2) &&
      (nr->condition & NR_COND_OWN_RX_BUSY)) {
   nr->condition &= ~NR_COND_OWN_RX_BUSY;
   nr->condition &= ~NR_COND_ACK_PENDING;
   nr->vl = nr->vr;
   nr_write_internal(sk, NR_INFOACK);
   break;
  }
  break;
 }

 nr_start_heartbeat(sk);
 bh_unlock_sock(sk);
}
