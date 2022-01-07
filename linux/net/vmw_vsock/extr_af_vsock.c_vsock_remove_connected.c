
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsock_sock {int dummy; } ;


 scalar_t__ __vsock_in_connected_table (struct vsock_sock*) ;
 int __vsock_remove_connected (struct vsock_sock*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int vsock_table_lock ;

void vsock_remove_connected(struct vsock_sock *vsk)
{
 spin_lock_bh(&vsock_table_lock);
 if (__vsock_in_connected_table(vsk))
  __vsock_remove_connected(vsk);
 spin_unlock_bh(&vsock_table_lock);
}
