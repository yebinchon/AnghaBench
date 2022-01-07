
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int sk_reuseport_cb; } ;
struct sctp_hashbucket {int lock; } ;
struct TYPE_2__ {int port; } ;
struct sctp_ep_common {size_t hashent; int node; TYPE_1__ bind_addr; struct sock* sk; } ;
struct sctp_endpoint {struct sctp_ep_common base; } ;


 int hlist_del_init (int *) ;
 scalar_t__ rcu_access_pointer (int ) ;
 int reuseport_detach_sock (struct sock*) ;
 size_t sctp_ep_hashfn (int ,int ) ;
 struct sctp_hashbucket* sctp_ep_hashtable ;
 int sock_net (struct sock*) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

__attribute__((used)) static void __sctp_unhash_endpoint(struct sctp_endpoint *ep)
{
 struct sock *sk = ep->base.sk;
 struct sctp_hashbucket *head;
 struct sctp_ep_common *epb;

 epb = &ep->base;

 epb->hashent = sctp_ep_hashfn(sock_net(sk), epb->bind_addr.port);

 head = &sctp_ep_hashtable[epb->hashent];

 if (rcu_access_pointer(sk->sk_reuseport_cb))
  reuseport_detach_sock(sk);

 write_lock(&head->lock);
 hlist_del_init(&epb->node);
 write_unlock(&head->lock);
}
