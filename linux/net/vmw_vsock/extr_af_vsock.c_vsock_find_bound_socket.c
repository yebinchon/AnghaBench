
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_vm {int dummy; } ;
struct sock {int dummy; } ;


 struct sock* __vsock_find_bound_socket (struct sockaddr_vm*) ;
 int sock_hold (struct sock*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int vsock_table_lock ;

struct sock *vsock_find_bound_socket(struct sockaddr_vm *addr)
{
 struct sock *sk;

 spin_lock_bh(&vsock_table_lock);
 sk = __vsock_find_bound_socket(addr);
 if (sk)
  sock_hold(sk);

 spin_unlock_bh(&vsock_table_lock);

 return sk;
}
