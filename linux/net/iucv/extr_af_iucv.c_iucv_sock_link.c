
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct iucv_sock_list {int lock; int head; } ;


 int sk_add_node (struct sock*,int *) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

void iucv_sock_link(struct iucv_sock_list *l, struct sock *sk)
{
 write_lock_bh(&l->lock);
 sk_add_node(sk, &l->head);
 write_unlock_bh(&l->lock);
}
