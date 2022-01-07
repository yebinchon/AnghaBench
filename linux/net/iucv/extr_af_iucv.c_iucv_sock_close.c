
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_state; unsigned long sk_lingertime; scalar_t__ sk_bound_dev_if; int (* sk_state_change ) (struct sock*) ;int sk_err; } ;
struct iucv_sock {int * hs_dev; int backlog_skb_q; int send_skb_q; int transport; } ;


 int AF_IUCV_FLAG_FIN ;
 int AF_IUCV_TRANS_HIPER ;
 int ECONNRESET ;
 int IUCV_CLOSED ;



 unsigned long IUCV_DISCONN_TIMEOUT ;

 int SOCK_LINGER ;
 int SOCK_ZAPPED ;
 int dev_put (int *) ;
 int iucv_send_ctrl (struct sock*,int ) ;
 int iucv_sever_path (struct sock*,int) ;
 struct iucv_sock* iucv_sk (struct sock*) ;
 int iucv_sock_cleanup_listen (struct sock*) ;
 int iucv_sock_in_state (struct sock*,int,int ) ;
 int iucv_sock_wait (struct sock*,int ,unsigned long) ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 int skb_queue_empty (int *) ;
 int skb_queue_purge (int *) ;
 int sock_flag (struct sock*,int ) ;
 int sock_set_flag (struct sock*,int ) ;
 int stub1 (struct sock*) ;
 int stub2 (struct sock*) ;
 int stub3 (struct sock*) ;
 int stub4 (struct sock*) ;

__attribute__((used)) static void iucv_sock_close(struct sock *sk)
{
 struct iucv_sock *iucv = iucv_sk(sk);
 unsigned long timeo;
 int err = 0;

 lock_sock(sk);

 switch (sk->sk_state) {
 case 128:
  iucv_sock_cleanup_listen(sk);
  break;

 case 130:
  if (iucv->transport == AF_IUCV_TRANS_HIPER) {
   err = iucv_send_ctrl(sk, AF_IUCV_FLAG_FIN);
   sk->sk_state = 129;
   sk->sk_state_change(sk);
  }


 case 129:
  sk->sk_state = 131;
  sk->sk_state_change(sk);

  if (!err && !skb_queue_empty(&iucv->send_skb_q)) {
   if (sock_flag(sk, SOCK_LINGER) && sk->sk_lingertime)
    timeo = sk->sk_lingertime;
   else
    timeo = IUCV_DISCONN_TIMEOUT;
   iucv_sock_wait(sk,
     iucv_sock_in_state(sk, IUCV_CLOSED, 0),
     timeo);
  }


 case 131:
  sk->sk_state = IUCV_CLOSED;
  sk->sk_state_change(sk);

  sk->sk_err = ECONNRESET;
  sk->sk_state_change(sk);

  skb_queue_purge(&iucv->send_skb_q);
  skb_queue_purge(&iucv->backlog_skb_q);


 default:
  iucv_sever_path(sk, 1);
 }

 if (iucv->hs_dev) {
  dev_put(iucv->hs_dev);
  iucv->hs_dev = ((void*)0);
  sk->sk_bound_dev_if = 0;
 }


 sock_set_flag(sk, SOCK_ZAPPED);

 release_sock(sk);
}
