
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct nfc_sock_list {int lock; } ;


 int sk_del_node_init (struct sock*) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

__attribute__((used)) static void nfc_sock_unlink(struct nfc_sock_list *l, struct sock *sk)
{
 write_lock(&l->lock);
 sk_del_node_init(sk);
 write_unlock(&l->lock);
}
