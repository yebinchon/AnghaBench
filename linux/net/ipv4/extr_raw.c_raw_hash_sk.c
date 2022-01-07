
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sock {TYPE_2__* sk_prot; } ;
struct raw_hashinfo {int lock; struct hlist_head* ht; } ;
struct hlist_head {int dummy; } ;
struct TYPE_6__ {int inet_num; } ;
struct TYPE_4__ {struct raw_hashinfo* raw_hash; } ;
struct TYPE_5__ {TYPE_1__ h; } ;


 int RAW_HTABLE_SIZE ;
 TYPE_3__* inet_sk (struct sock*) ;
 int sk_add_node (struct sock*,struct hlist_head*) ;
 int sock_net (struct sock*) ;
 int sock_prot_inuse_add (int ,TYPE_2__*,int) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

int raw_hash_sk(struct sock *sk)
{
 struct raw_hashinfo *h = sk->sk_prot->h.raw_hash;
 struct hlist_head *head;

 head = &h->ht[inet_sk(sk)->inet_num & (RAW_HTABLE_SIZE - 1)];

 write_lock_bh(&h->lock);
 sk_add_node(sk, head);
 sock_prot_inuse_add(sock_net(sk), sk->sk_prot, 1);
 write_unlock_bh(&h->lock);

 return 0;
}
