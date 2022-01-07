
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct socket {scalar_t__ state; struct sock* sk; } ;
struct sock {int sk_max_ack_backlog; scalar_t__ sk_reuse; int sk_state; } ;
struct sctp_endpoint {int dummy; } ;
struct TYPE_4__ {TYPE_1__* bind_hash; scalar_t__ reuse; struct sctp_endpoint* ep; } ;
struct TYPE_3__ {int fastreuse; } ;


 int CLOSED ;
 int EINVAL ;
 int LISTENING ;
 int SCTP_SS_CLOSED ;
 scalar_t__ SS_UNCONNECTED ;
 int UDP_HIGH_BANDWIDTH ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 int sctp_listen_start (struct sock*,int) ;
 TYPE_2__* sctp_sk (struct sock*) ;
 scalar_t__ sctp_sstate (struct sock*,int ) ;
 scalar_t__ sctp_style (struct sock*,int ) ;
 int sctp_unhash_endpoint (struct sctp_endpoint*) ;
 scalar_t__ unlikely (int) ;

int sctp_inet_listen(struct socket *sock, int backlog)
{
 struct sock *sk = sock->sk;
 struct sctp_endpoint *ep = sctp_sk(sk)->ep;
 int err = -EINVAL;

 if (unlikely(backlog < 0))
  return err;

 lock_sock(sk);


 if (sctp_style(sk, UDP_HIGH_BANDWIDTH))
  goto out;

 if (sock->state != SS_UNCONNECTED)
  goto out;

 if (!sctp_sstate(sk, LISTENING) && !sctp_sstate(sk, CLOSED))
  goto out;


 if (!backlog) {
  if (sctp_sstate(sk, CLOSED))
   goto out;

  err = 0;
  sctp_unhash_endpoint(ep);
  sk->sk_state = SCTP_SS_CLOSED;
  if (sk->sk_reuse || sctp_sk(sk)->reuse)
   sctp_sk(sk)->bind_hash->fastreuse = 1;
  goto out;
 }


 if (sctp_sstate(sk, LISTENING))
  sk->sk_max_ack_backlog = backlog;
 else {
  err = sctp_listen_start(sk, backlog);
  if (err)
   goto out;
 }

 err = 0;
out:
 release_sock(sk);
 return err;
}
