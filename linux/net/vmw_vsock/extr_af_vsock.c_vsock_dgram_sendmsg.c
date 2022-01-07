
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_vm {scalar_t__ svm_cid; int svm_port; } ;
struct vsock_sock {struct sockaddr_vm remote_addr; } ;
struct socket {scalar_t__ state; struct sock* sk; } ;
struct sock {int dummy; } ;
struct msghdr {int msg_flags; int msg_namelen; scalar_t__ msg_name; } ;
struct TYPE_2__ {scalar_t__ (* get_local_cid ) () ;int (* dgram_enqueue ) (struct vsock_sock*,struct sockaddr_vm*,struct msghdr*,size_t) ;int (* dgram_allow ) (scalar_t__,int ) ;} ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int MSG_OOB ;
 scalar_t__ SS_CONNECTED ;
 scalar_t__ VMADDR_CID_ANY ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 scalar_t__ stub1 () ;
 scalar_t__ stub2 () ;
 int stub3 (scalar_t__,int ) ;
 int stub4 (struct vsock_sock*,struct sockaddr_vm*,struct msghdr*,size_t) ;
 TYPE_1__* transport ;
 int vsock_addr_bound (struct sockaddr_vm*) ;
 scalar_t__ vsock_addr_cast (scalar_t__,int ,struct sockaddr_vm**) ;
 int vsock_auto_bind (struct vsock_sock*) ;
 struct vsock_sock* vsock_sk (struct sock*) ;

__attribute__((used)) static int vsock_dgram_sendmsg(struct socket *sock, struct msghdr *msg,
          size_t len)
{
 int err;
 struct sock *sk;
 struct vsock_sock *vsk;
 struct sockaddr_vm *remote_addr;

 if (msg->msg_flags & MSG_OOB)
  return -EOPNOTSUPP;


 err = 0;
 sk = sock->sk;
 vsk = vsock_sk(sk);

 lock_sock(sk);

 err = vsock_auto_bind(vsk);
 if (err)
  goto out;





 if (msg->msg_name &&
     vsock_addr_cast(msg->msg_name, msg->msg_namelen,
       &remote_addr) == 0) {




  if (remote_addr->svm_cid == VMADDR_CID_ANY)
   remote_addr->svm_cid = transport->get_local_cid();

  if (!vsock_addr_bound(remote_addr)) {
   err = -EINVAL;
   goto out;
  }
 } else if (sock->state == SS_CONNECTED) {
  remote_addr = &vsk->remote_addr;

  if (remote_addr->svm_cid == VMADDR_CID_ANY)
   remote_addr->svm_cid = transport->get_local_cid();




  if (!vsock_addr_bound(&vsk->remote_addr)) {
   err = -EINVAL;
   goto out;
  }
 } else {
  err = -EINVAL;
  goto out;
 }

 if (!transport->dgram_allow(remote_addr->svm_cid,
        remote_addr->svm_port)) {
  err = -EINVAL;
  goto out;
 }

 err = transport->dgram_enqueue(vsk, remote_addr, msg, len);

out:
 release_sock(sk);
 return err;
}
