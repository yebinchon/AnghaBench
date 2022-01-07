
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int sk_cookie; int sk_mark; } ;
struct request_sock {int dummy; } ;
struct inet_connection_sock {int icsk_accept_queue; scalar_t__ icsk_probes_out; scalar_t__ icsk_backoff; scalar_t__ icsk_retransmits; int * icsk_bind_hash; } ;
typedef int gfp_t ;
struct TYPE_4__ {int ir_cookie; int ir_mark; int ir_num; int ir_rmt_port; } ;
struct TYPE_3__ {int * mc_list; int inet_sport; int inet_num; int inet_dport; } ;


 int SOCK_RCU_FREE ;
 int TCP_SYN_RECV ;
 int atomic64_read (int *) ;
 int atomic64_set (int *,int ) ;
 int htons (int ) ;
 struct inet_connection_sock* inet_csk (struct sock*) ;
 TYPE_2__* inet_rsk (struct request_sock const*) ;
 TYPE_1__* inet_sk (struct sock*) ;
 int inet_sk_set_state (struct sock*,int ) ;
 int memset (int *,int ,int) ;
 int security_inet_csk_clone (struct sock*,struct request_sock const*) ;
 struct sock* sk_clone_lock (struct sock const*,int const) ;
 int sock_reset_flag (struct sock*,int ) ;

struct sock *inet_csk_clone_lock(const struct sock *sk,
     const struct request_sock *req,
     const gfp_t priority)
{
 struct sock *newsk = sk_clone_lock(sk, priority);

 if (newsk) {
  struct inet_connection_sock *newicsk = inet_csk(newsk);

  inet_sk_set_state(newsk, TCP_SYN_RECV);
  newicsk->icsk_bind_hash = ((void*)0);

  inet_sk(newsk)->inet_dport = inet_rsk(req)->ir_rmt_port;
  inet_sk(newsk)->inet_num = inet_rsk(req)->ir_num;
  inet_sk(newsk)->inet_sport = htons(inet_rsk(req)->ir_num);


  sock_reset_flag(newsk, SOCK_RCU_FREE);

  inet_sk(newsk)->mc_list = ((void*)0);

  newsk->sk_mark = inet_rsk(req)->ir_mark;
  atomic64_set(&newsk->sk_cookie,
        atomic64_read(&inet_rsk(req)->ir_cookie));

  newicsk->icsk_retransmits = 0;
  newicsk->icsk_backoff = 0;
  newicsk->icsk_probes_out = 0;


  memset(&newicsk->icsk_accept_queue, 0, sizeof(newicsk->icsk_accept_queue));

  security_inet_csk_clone(newsk, req);
 }
 return newsk;
}
