
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int dummy; } ;
struct request_sock {int dummy; } ;
struct TYPE_4__ {scalar_t__ icsk_retransmits; } ;
struct TYPE_3__ {int fastopen_rsk; scalar_t__ retrans_stamp; } ;


 TYPE_2__* inet_csk (struct sock*) ;
 int lockdep_sock_is_held (struct sock*) ;
 struct request_sock* rcu_dereference_protected (int ,int ) ;
 int reqsk_fastopen_remove (struct sock*,struct request_sock*,int) ;
 int tcp_rearm_rto (struct sock*) ;
 TYPE_1__* tcp_sk (struct sock*) ;
 int tcp_try_undo_loss (struct sock*,int) ;

__attribute__((used)) static void tcp_rcv_synrecv_state_fastopen(struct sock *sk)
{
 struct request_sock *req;

 tcp_try_undo_loss(sk, 0);


 tcp_sk(sk)->retrans_stamp = 0;
 inet_csk(sk)->icsk_retransmits = 0;




 req = rcu_dereference_protected(tcp_sk(sk)->fastopen_rsk,
     lockdep_sock_is_held(sk));
 reqsk_fastopen_remove(sk, req, 0);
 tcp_rearm_rto(sk);
}
