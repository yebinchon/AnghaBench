
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct j1939_sock {int waitq; int skb_pending; } ;


 int atomic_dec_return (int *) ;
 struct j1939_sock* j1939_sk (struct sock*) ;
 int wake_up (int *) ;

void j1939_sock_pending_del(struct sock *sk)
{
 struct j1939_sock *jsk = j1939_sk(sk);


 if (!atomic_dec_return(&jsk->skb_pending))
  wake_up(&jsk->waitq);
}
