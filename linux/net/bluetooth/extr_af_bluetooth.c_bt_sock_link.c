
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct bt_sock_list {int lock; int head; } ;


 int sk_add_node (struct sock*,int *) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

void bt_sock_link(struct bt_sock_list *l, struct sock *sk)
{
 write_lock(&l->lock);
 sk_add_node(sk, &l->head);
 write_unlock(&l->lock);
}
