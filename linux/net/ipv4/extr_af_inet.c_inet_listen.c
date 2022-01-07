
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct socket {scalar_t__ state; scalar_t__ type; struct sock* sk; } ;
struct sock {unsigned char sk_state; int sk_max_ack_backlog; } ;
struct TYPE_8__ {int max_qlen; } ;
struct TYPE_9__ {TYPE_2__ fastopenq; } ;
struct TYPE_11__ {TYPE_3__ icsk_accept_queue; } ;
struct TYPE_7__ {int sysctl_tcp_fastopen; } ;
struct TYPE_10__ {TYPE_1__ ipv4; } ;


 int BPF_SOCK_OPS_TCP_LISTEN_CB ;
 int EINVAL ;
 scalar_t__ SOCK_STREAM ;
 scalar_t__ SS_UNCONNECTED ;
 int TCPF_CLOSE ;
 int TCPF_LISTEN ;
 unsigned char TCP_LISTEN ;
 int TFO_SERVER_ENABLE ;
 int TFO_SERVER_WO_SOCKOPT1 ;
 int fastopen_queue_tune (struct sock*,int) ;
 TYPE_6__* inet_csk (struct sock*) ;
 int inet_csk_listen_start (struct sock*,int) ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 TYPE_4__* sock_net (struct sock*) ;
 int tcp_call_bpf (struct sock*,int ,int ,int *) ;
 int tcp_fastopen_init_key_once (TYPE_4__*) ;

int inet_listen(struct socket *sock, int backlog)
{
 struct sock *sk = sock->sk;
 unsigned char old_state;
 int err, tcp_fastopen;

 lock_sock(sk);

 err = -EINVAL;
 if (sock->state != SS_UNCONNECTED || sock->type != SOCK_STREAM)
  goto out;

 old_state = sk->sk_state;
 if (!((1 << old_state) & (TCPF_CLOSE | TCPF_LISTEN)))
  goto out;

 sk->sk_max_ack_backlog = backlog;



 if (old_state != TCP_LISTEN) {






  tcp_fastopen = sock_net(sk)->ipv4.sysctl_tcp_fastopen;
  if ((tcp_fastopen & TFO_SERVER_WO_SOCKOPT1) &&
      (tcp_fastopen & TFO_SERVER_ENABLE) &&
      !inet_csk(sk)->icsk_accept_queue.fastopenq.max_qlen) {
   fastopen_queue_tune(sk, backlog);
   tcp_fastopen_init_key_once(sock_net(sk));
  }

  err = inet_csk_listen_start(sk, backlog);
  if (err)
   goto out;
  tcp_call_bpf(sk, BPF_SOCK_OPS_TCP_LISTEN_CB, 0, ((void*)0));
 }
 err = 0;

out:
 release_sock(sk);
 return err;
}
