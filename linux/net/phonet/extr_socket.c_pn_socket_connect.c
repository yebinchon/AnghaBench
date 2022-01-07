
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct socket {int state; struct sock* sk; } ;
struct sockaddr_pn {scalar_t__ spn_family; } ;
struct sockaddr {int dummy; } ;
struct sock {int sk_state; TYPE_1__* sk_prot; } ;
struct pn_sock {scalar_t__ dobject; int resource; } ;
struct TYPE_2__ {int (* connect ) (struct sock*,struct sockaddr*,int) ;} ;


 scalar_t__ AF_PHONET ;
 int DEFINE_WAIT (int ) ;
 int EAFNOSUPPORT ;
 int EALREADY ;
 int ECONNREFUSED ;
 int ECONNRESET ;
 int EINPROGRESS ;
 int EINVAL ;
 int EISCONN ;
 int ENOBUFS ;
 int O_NONBLOCK ;
 int const SS_CONNECTED ;


 int TASK_INTERRUPTIBLE ;
 int TCPF_ESTABLISHED ;
 int TCPF_SYN_RECV ;
 int TCP_CLOSE ;
 int TCP_CLOSE_WAIT ;
 int TCP_SYN_SENT ;
 struct task_struct* current ;
 int finish_wait (int ,int *) ;
 int lock_sock (struct sock*) ;
 struct pn_sock* pn_sk (struct sock*) ;
 scalar_t__ pn_sockaddr_get_object (struct sockaddr_pn*) ;
 int pn_sockaddr_get_resource (struct sockaddr_pn*) ;
 scalar_t__ pn_socket_autobind (struct socket*) ;
 int prepare_to_wait_exclusive (int ,int *,int ) ;
 int release_sock (struct sock*) ;
 long schedule_timeout (long) ;
 scalar_t__ signal_pending (struct task_struct*) ;
 int sk_sleep (struct sock*) ;
 int sock_intr_errno (long) ;
 long sock_rcvtimeo (struct sock*,int) ;
 int stub1 (struct sock*,struct sockaddr*,int) ;
 int wait ;

__attribute__((used)) static int pn_socket_connect(struct socket *sock, struct sockaddr *addr,
  int len, int flags)
{
 struct sock *sk = sock->sk;
 struct pn_sock *pn = pn_sk(sk);
 struct sockaddr_pn *spn = (struct sockaddr_pn *)addr;
 struct task_struct *tsk = current;
 long timeo = sock_rcvtimeo(sk, flags & O_NONBLOCK);
 int err;

 if (pn_socket_autobind(sock))
  return -ENOBUFS;
 if (len < sizeof(struct sockaddr_pn))
  return -EINVAL;
 if (spn->spn_family != AF_PHONET)
  return -EAFNOSUPPORT;

 lock_sock(sk);

 switch (sock->state) {
 case 128:
  if (sk->sk_state != TCP_CLOSE) {
   err = -EISCONN;
   goto out;
  }
  break;
 case 129:
  err = -EALREADY;
  goto out;
 default:
  err = -EISCONN;
  goto out;
 }

 pn->dobject = pn_sockaddr_get_object(spn);
 pn->resource = pn_sockaddr_get_resource(spn);
 sock->state = 129;

 err = sk->sk_prot->connect(sk, addr, len);
 if (err) {
  sock->state = 128;
  pn->dobject = 0;
  goto out;
 }

 while (sk->sk_state == TCP_SYN_SENT) {
  DEFINE_WAIT(wait);

  if (!timeo) {
   err = -EINPROGRESS;
   goto out;
  }
  if (signal_pending(tsk)) {
   err = sock_intr_errno(timeo);
   goto out;
  }

  prepare_to_wait_exclusive(sk_sleep(sk), &wait,
      TASK_INTERRUPTIBLE);
  release_sock(sk);
  timeo = schedule_timeout(timeo);
  lock_sock(sk);
  finish_wait(sk_sleep(sk), &wait);
 }

 if ((1 << sk->sk_state) & (TCPF_SYN_RECV|TCPF_ESTABLISHED))
  err = 0;
 else if (sk->sk_state == TCP_CLOSE_WAIT)
  err = -ECONNRESET;
 else
  err = -ECONNREFUSED;
 sock->state = err ? 128 : SS_CONNECTED;
out:
 release_sock(sk);
 return err;
}
