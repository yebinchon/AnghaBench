
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {TYPE_1__* sk_prot; scalar_t__ sk_ack_backlog; } ;
struct inet_sock {int inet_num; int inet_sport; } ;
struct inet_connection_sock {int icsk_accept_queue; } ;
struct TYPE_2__ {int (* hash ) (struct sock*) ;int (* get_port ) (struct sock*,int ) ;} ;


 int EADDRINUSE ;
 int TCP_CLOSE ;
 int TCP_LISTEN ;
 int htons (int ) ;
 struct inet_connection_sock* inet_csk (struct sock*) ;
 int inet_csk_delack_init (struct sock*) ;
 struct inet_sock* inet_sk (struct sock*) ;
 int inet_sk_set_state (struct sock*,int ) ;
 int inet_sk_state_store (struct sock*,int ) ;
 scalar_t__ likely (int) ;
 int reqsk_queue_alloc (int *) ;
 int sk_dst_reset (struct sock*) ;
 int stub1 (struct sock*,int ) ;
 int stub2 (struct sock*) ;

int inet_csk_listen_start(struct sock *sk, int backlog)
{
 struct inet_connection_sock *icsk = inet_csk(sk);
 struct inet_sock *inet = inet_sk(sk);
 int err = -EADDRINUSE;

 reqsk_queue_alloc(&icsk->icsk_accept_queue);

 sk->sk_ack_backlog = 0;
 inet_csk_delack_init(sk);






 inet_sk_state_store(sk, TCP_LISTEN);
 if (!sk->sk_prot->get_port(sk, inet->inet_num)) {
  inet->inet_sport = htons(inet->inet_num);

  sk_dst_reset(sk);
  err = sk->sk_prot->hash(sk);

  if (likely(!err))
   return 0;
 }

 inet_sk_set_state(sk, TCP_CLOSE);
 return err;
}
