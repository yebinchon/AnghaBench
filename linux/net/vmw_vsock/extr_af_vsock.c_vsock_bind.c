
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {struct sock* sk; } ;
struct sockaddr_vm {int dummy; } ;
struct sockaddr {int dummy; } ;
struct sock {int dummy; } ;


 int EINVAL ;
 int __vsock_bind (struct sock*,struct sockaddr_vm*) ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 scalar_t__ vsock_addr_cast (struct sockaddr*,int,struct sockaddr_vm**) ;

__attribute__((used)) static int
vsock_bind(struct socket *sock, struct sockaddr *addr, int addr_len)
{
 int err;
 struct sock *sk;
 struct sockaddr_vm *vm_addr;

 sk = sock->sk;

 if (vsock_addr_cast(addr, addr_len, &vm_addr) != 0)
  return -EINVAL;

 lock_sock(sk);
 err = __vsock_bind(sk, vm_addr);
 release_sock(sk);

 return err;
}
