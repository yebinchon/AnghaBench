
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {TYPE_2__* sk_prot; } ;
struct hlist_head {int dummy; } ;
struct smc_hashinfo {int lock; struct hlist_head ht; } ;
struct TYPE_3__ {struct smc_hashinfo* smc_hash; } ;
struct TYPE_4__ {TYPE_1__ h; } ;


 int sk_add_node (struct sock*,struct hlist_head*) ;
 int sock_net (struct sock*) ;
 int sock_prot_inuse_add (int ,TYPE_2__*,int) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

int smc_hash_sk(struct sock *sk)
{
 struct smc_hashinfo *h = sk->sk_prot->h.smc_hash;
 struct hlist_head *head;

 head = &h->ht;

 write_lock_bh(&h->lock);
 sk_add_node(sk, head);
 sock_prot_inuse_add(sock_net(sk), sk->sk_prot, 1);
 write_unlock_bh(&h->lock);

 return 0;
}
