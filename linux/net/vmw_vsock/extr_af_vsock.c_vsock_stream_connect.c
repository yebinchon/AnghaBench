
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vsock_sock {long connect_timeout; int connect_work; int remote_addr; } ;
struct socket {int state; struct sock* sk; } ;
struct sockaddr_vm {int svm_port; int svm_cid; } ;
struct sockaddr {int dummy; } ;
struct sock {scalar_t__ sk_state; int sk_err; } ;
struct TYPE_2__ {int (* connect ) (struct vsock_sock*) ;int (* stream_allow ) (int ,int ) ;} ;


 int DEFINE_WAIT (int ) ;
 int EALREADY ;
 int EINPROGRESS ;
 int EINVAL ;
 int EISCONN ;
 int ENETUNREACH ;
 int ETIMEDOUT ;
 int O_NONBLOCK ;



 void* SS_UNCONNECTED ;
 int TASK_INTERRUPTIBLE ;
 void* TCP_CLOSE ;
 scalar_t__ TCP_ESTABLISHED ;
 scalar_t__ TCP_LISTEN ;
 scalar_t__ TCP_SYN_SENT ;
 int current ;
 int finish_wait (int ,int *) ;
 int lock_sock (struct sock*) ;
 int memcpy (int *,struct sockaddr_vm*,int) ;
 int prepare_to_wait (int ,int *,int ) ;
 int release_sock (struct sock*) ;
 int schedule_delayed_work (int *,long) ;
 long schedule_timeout (long) ;
 scalar_t__ signal_pending (int ) ;
 int sk_sleep (struct sock*) ;
 int sock_hold (struct sock*) ;
 int sock_intr_errno (long) ;
 int stub1 (int ,int ) ;
 int stub2 (struct vsock_sock*) ;
 TYPE_1__* transport ;
 int vsock_addr_cast (struct sockaddr*,int,struct sockaddr_vm**) ;
 int vsock_auto_bind (struct vsock_sock*) ;
 struct vsock_sock* vsock_sk (struct sock*) ;
 int vsock_transport_cancel_pkt (struct vsock_sock*) ;
 int wait ;

__attribute__((used)) static int vsock_stream_connect(struct socket *sock, struct sockaddr *addr,
    int addr_len, int flags)
{
 int err;
 struct sock *sk;
 struct vsock_sock *vsk;
 struct sockaddr_vm *remote_addr;
 long timeout;
 DEFINE_WAIT(wait);

 err = 0;
 sk = sock->sk;
 vsk = vsock_sk(sk);

 lock_sock(sk);


 switch (sock->state) {
 case 130:
  err = -EISCONN;
  goto out;
 case 128:
  err = -EINVAL;
  goto out;
 case 129:






  err = -EALREADY;
  break;
 default:
  if ((sk->sk_state == TCP_LISTEN) ||
      vsock_addr_cast(addr, addr_len, &remote_addr) != 0) {
   err = -EINVAL;
   goto out;
  }




  if (!transport->stream_allow(remote_addr->svm_cid,
          remote_addr->svm_port)) {
   err = -ENETUNREACH;
   goto out;
  }


  memcpy(&vsk->remote_addr, remote_addr,
         sizeof(vsk->remote_addr));

  err = vsock_auto_bind(vsk);
  if (err)
   goto out;

  sk->sk_state = TCP_SYN_SENT;

  err = transport->connect(vsk);
  if (err < 0)
   goto out;




  sock->state = 129;
  err = -EINPROGRESS;
 }





 timeout = vsk->connect_timeout;
 prepare_to_wait(sk_sleep(sk), &wait, TASK_INTERRUPTIBLE);

 while (sk->sk_state != TCP_ESTABLISHED && sk->sk_err == 0) {
  if (flags & O_NONBLOCK) {






   sock_hold(sk);
   schedule_delayed_work(&vsk->connect_work, timeout);


   goto out_wait;
  }

  release_sock(sk);
  timeout = schedule_timeout(timeout);
  lock_sock(sk);

  if (signal_pending(current)) {
   err = sock_intr_errno(timeout);
   sk->sk_state = TCP_CLOSE;
   sock->state = SS_UNCONNECTED;
   vsock_transport_cancel_pkt(vsk);
   goto out_wait;
  } else if (timeout == 0) {
   err = -ETIMEDOUT;
   sk->sk_state = TCP_CLOSE;
   sock->state = SS_UNCONNECTED;
   vsock_transport_cancel_pkt(vsk);
   goto out_wait;
  }

  prepare_to_wait(sk_sleep(sk), &wait, TASK_INTERRUPTIBLE);
 }

 if (sk->sk_err) {
  err = -sk->sk_err;
  sk->sk_state = TCP_CLOSE;
  sock->state = SS_UNCONNECTED;
 } else {
  err = 0;
 }

out_wait:
 finish_wait(sk_sleep(sk), &wait);
out:
 release_sock(sk);
 return err;
}
