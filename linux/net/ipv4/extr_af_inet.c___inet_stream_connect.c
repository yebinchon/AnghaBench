
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct socket {int state; struct sock* sk; } ;
struct sockaddr {scalar_t__ sa_family; } ;
struct sock {int sk_state; scalar_t__ sk_protocol; TYPE_2__* sk_prot; } ;
struct TYPE_8__ {int defer_connect; } ;
struct TYPE_7__ {TYPE_1__* fastopen_req; } ;
struct TYPE_6__ {int (* disconnect ) (struct sock*,int) ;int (* pre_connect ) (struct sock*,struct sockaddr*,int) ;int (* connect ) (struct sock*,struct sockaddr*,int) ;} ;
struct TYPE_5__ {scalar_t__ data; } ;


 scalar_t__ AF_UNSPEC ;
 int BPF_CGROUP_PRE_CONNECT_ENABLED (struct sock*) ;
 int EALREADY ;
 int ECONNABORTED ;
 int EINPROGRESS ;
 int EINVAL ;
 int EISCONN ;
 scalar_t__ IPPROTO_TCP ;
 int O_NONBLOCK ;


 int SS_DISCONNECTING ;

 int TCPF_SYN_RECV ;
 int TCPF_SYN_SENT ;
 int TCP_CLOSE ;
 int current ;
 TYPE_4__* inet_sk (struct sock*) ;
 int inet_wait_for_connect (struct sock*,long,int) ;
 scalar_t__ signal_pending (int ) ;
 scalar_t__ sock_error (struct sock*) ;
 int sock_intr_errno (long) ;
 long sock_sndtimeo (struct sock*,int) ;
 int stub1 (struct sock*,int) ;
 int stub2 (struct sock*,struct sockaddr*,int) ;
 int stub3 (struct sock*,struct sockaddr*,int) ;
 int stub4 (struct sock*,int) ;
 TYPE_3__* tcp_sk (struct sock*) ;

int __inet_stream_connect(struct socket *sock, struct sockaddr *uaddr,
     int addr_len, int flags, int is_sendmsg)
{
 struct sock *sk = sock->sk;
 int err;
 long timeo;
 if (uaddr) {
  if (addr_len < sizeof(uaddr->sa_family))
   return -EINVAL;

  if (uaddr->sa_family == AF_UNSPEC) {
   err = sk->sk_prot->disconnect(sk, flags);
   sock->state = err ? SS_DISCONNECTING : 128;
   goto out;
  }
 }

 switch (sock->state) {
 default:
  err = -EINVAL;
  goto out;
 case 130:
  err = -EISCONN;
  goto out;
 case 129:
  if (inet_sk(sk)->defer_connect)
   err = is_sendmsg ? -EINPROGRESS : -EISCONN;
  else
   err = -EALREADY;

  break;
 case 128:
  err = -EISCONN;
  if (sk->sk_state != TCP_CLOSE)
   goto out;

  if (BPF_CGROUP_PRE_CONNECT_ENABLED(sk)) {
   err = sk->sk_prot->pre_connect(sk, uaddr, addr_len);
   if (err)
    goto out;
  }

  err = sk->sk_prot->connect(sk, uaddr, addr_len);
  if (err < 0)
   goto out;

  sock->state = 129;

  if (!err && inet_sk(sk)->defer_connect)
   goto out;





  err = -EINPROGRESS;
  break;
 }

 timeo = sock_sndtimeo(sk, flags & O_NONBLOCK);

 if ((1 << sk->sk_state) & (TCPF_SYN_SENT | TCPF_SYN_RECV)) {
  int writebias = (sk->sk_protocol == IPPROTO_TCP) &&
    tcp_sk(sk)->fastopen_req &&
    tcp_sk(sk)->fastopen_req->data ? 1 : 0;


  if (!timeo || !inet_wait_for_connect(sk, timeo, writebias))
   goto out;

  err = sock_intr_errno(timeo);
  if (signal_pending(current))
   goto out;
 }




 if (sk->sk_state == TCP_CLOSE)
  goto sock_error;






 sock->state = 130;
 err = 0;
out:
 return err;

sock_error:
 err = sock_error(sk) ? : -ECONNABORTED;
 sock->state = 128;
 if (sk->sk_prot->disconnect(sk, flags))
  sock->state = SS_DISCONNECTING;
 goto out;
}
