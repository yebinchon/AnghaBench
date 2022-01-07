
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_prot; } ;


 int raw_lock ;
 scalar_t__ sk_del_node_init (struct sock*) ;
 int sock_net (struct sock*) ;
 int sock_prot_inuse_add (int ,int ,int) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static void raw_unhash(struct sock *sk)
{
 write_lock_bh(&raw_lock);
 if (sk_del_node_init(sk))
  sock_prot_inuse_add(sock_net(sk), sk->sk_prot, -1);
 write_unlock_bh(&raw_lock);
}
