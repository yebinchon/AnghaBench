
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vsock_sock {int remote_addr; } ;
struct socket {int state; struct sock* sk; } ;
struct sockaddr_vm {scalar_t__ svm_family; int svm_port; int svm_cid; } ;
struct sockaddr {int dummy; } ;
struct sock {int dummy; } ;
struct TYPE_2__ {int (* dgram_allow ) (int ,int ) ;} ;


 scalar_t__ AF_UNSPEC ;
 int EAFNOSUPPORT ;
 int EINVAL ;
 int SS_CONNECTED ;
 int SS_UNCONNECTED ;
 int VMADDR_CID_ANY ;
 int VMADDR_PORT_ANY ;
 int lock_sock (struct sock*) ;
 int memcpy (int *,struct sockaddr_vm*,int) ;
 int release_sock (struct sock*) ;
 int stub1 (int ,int ) ;
 TYPE_1__* transport ;
 int vsock_addr_cast (struct sockaddr*,int,struct sockaddr_vm**) ;
 int vsock_addr_init (int *,int ,int ) ;
 int vsock_auto_bind (struct vsock_sock*) ;
 struct vsock_sock* vsock_sk (struct sock*) ;

__attribute__((used)) static int vsock_dgram_connect(struct socket *sock,
          struct sockaddr *addr, int addr_len, int flags)
{
 int err;
 struct sock *sk;
 struct vsock_sock *vsk;
 struct sockaddr_vm *remote_addr;

 sk = sock->sk;
 vsk = vsock_sk(sk);

 err = vsock_addr_cast(addr, addr_len, &remote_addr);
 if (err == -EAFNOSUPPORT && remote_addr->svm_family == AF_UNSPEC) {
  lock_sock(sk);
  vsock_addr_init(&vsk->remote_addr, VMADDR_CID_ANY,
    VMADDR_PORT_ANY);
  sock->state = SS_UNCONNECTED;
  release_sock(sk);
  return 0;
 } else if (err != 0)
  return -EINVAL;

 lock_sock(sk);

 err = vsock_auto_bind(vsk);
 if (err)
  goto out;

 if (!transport->dgram_allow(remote_addr->svm_cid,
        remote_addr->svm_port)) {
  err = -EINVAL;
  goto out;
 }

 memcpy(&vsk->remote_addr, remote_addr, sizeof(vsk->remote_addr));
 sock->state = SS_CONNECTED;

out:
 release_sock(sk);
 return err;
}
