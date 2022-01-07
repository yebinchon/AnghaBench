
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_prot; } ;


 int dgram_head ;
 int dgram_lock ;
 int sk_add_node (struct sock*,int *) ;
 int sock_net (struct sock*) ;
 int sock_prot_inuse_add (int ,int ,int) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static int dgram_hash(struct sock *sk)
{
 write_lock_bh(&dgram_lock);
 sk_add_node(sk, &dgram_head);
 sock_prot_inuse_add(sock_net(sk), sk->sk_prot, 1);
 write_unlock_bh(&dgram_lock);

 return 0;
}
