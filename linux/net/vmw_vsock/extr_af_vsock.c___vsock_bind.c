
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct vsock_sock {int local_addr; } ;
struct sockaddr_vm {scalar_t__ svm_cid; } ;
struct sock {TYPE_1__* sk_socket; } ;
struct TYPE_4__ {scalar_t__ (* get_local_cid ) () ;} ;
struct TYPE_3__ {int type; } ;


 int EADDRNOTAVAIL ;
 int EINVAL ;


 scalar_t__ VMADDR_CID_ANY ;
 int __vsock_bind_dgram (struct vsock_sock*,struct sockaddr_vm*) ;
 int __vsock_bind_stream (struct vsock_sock*,struct sockaddr_vm*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ stub1 () ;
 TYPE_2__* transport ;
 scalar_t__ vsock_addr_bound (int *) ;
 struct vsock_sock* vsock_sk (struct sock*) ;
 int vsock_table_lock ;

__attribute__((used)) static int __vsock_bind(struct sock *sk, struct sockaddr_vm *addr)
{
 struct vsock_sock *vsk = vsock_sk(sk);
 u32 cid;
 int retval;


 if (vsock_addr_bound(&vsk->local_addr))
  return -EINVAL;






 cid = transport->get_local_cid();
 if (addr->svm_cid != cid && addr->svm_cid != VMADDR_CID_ANY)
  return -EADDRNOTAVAIL;

 switch (sk->sk_socket->type) {
 case 128:
  spin_lock_bh(&vsock_table_lock);
  retval = __vsock_bind_stream(vsk, addr);
  spin_unlock_bh(&vsock_table_lock);
  break;

 case 129:
  retval = __vsock_bind_dgram(vsk, addr);
  break;

 default:
  retval = -EINVAL;
  break;
 }

 return retval;
}
