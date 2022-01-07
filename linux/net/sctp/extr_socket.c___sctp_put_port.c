
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sctp_bind_hashbucket {int lock; } ;
struct sctp_bind_bucket {int dummy; } ;
struct TYPE_4__ {scalar_t__ inet_num; } ;
struct TYPE_3__ {struct sctp_bind_bucket* bind_hash; } ;


 int __sk_del_bind_node (struct sock*) ;
 TYPE_2__* inet_sk (struct sock*) ;
 int sctp_bucket_destroy (struct sctp_bind_bucket*) ;
 size_t sctp_phashfn (int ,scalar_t__) ;
 struct sctp_bind_hashbucket* sctp_port_hashtable ;
 TYPE_1__* sctp_sk (struct sock*) ;
 int sock_net (struct sock*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline void __sctp_put_port(struct sock *sk)
{
 struct sctp_bind_hashbucket *head =
  &sctp_port_hashtable[sctp_phashfn(sock_net(sk),
        inet_sk(sk)->inet_num)];
 struct sctp_bind_bucket *pp;

 spin_lock(&head->lock);
 pp = sctp_sk(sk)->bind_hash;
 __sk_del_bind_node(sk);
 sctp_sk(sk)->bind_hash = ((void*)0);
 inet_sk(sk)->inet_num = 0;
 sctp_bucket_destroy(pp);
 spin_unlock(&head->lock);
}
