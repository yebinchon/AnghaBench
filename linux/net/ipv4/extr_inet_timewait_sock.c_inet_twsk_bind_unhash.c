
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct inet_timewait_sock {struct inet_bind_bucket* tw_tb; int tw_bind_node; } ;
struct inet_hashinfo {int bind_bucket_cachep; } ;
struct inet_bind_bucket {int dummy; } ;


 int __hlist_del (int *) ;
 int __sock_put (struct sock*) ;
 int inet_bind_bucket_destroy (int ,struct inet_bind_bucket*) ;

void inet_twsk_bind_unhash(struct inet_timewait_sock *tw,
     struct inet_hashinfo *hashinfo)
{
 struct inet_bind_bucket *tb = tw->tw_tb;

 if (!tb)
  return;

 __hlist_del(&tw->tw_bind_node);
 tw->tw_tb = ((void*)0);
 inet_bind_bucket_destroy(hashinfo->bind_bucket_cachep, tb);
 __sock_put((struct sock *)tw);
}
