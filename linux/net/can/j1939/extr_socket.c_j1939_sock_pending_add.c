
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct j1939_sock {int skb_pending; } ;


 int atomic_inc (int *) ;
 struct j1939_sock* j1939_sk (struct sock*) ;

__attribute__((used)) static inline void j1939_sock_pending_add(struct sock *sk)
{
 struct j1939_sock *jsk = j1939_sk(sk);

 atomic_inc(&jsk->skb_pending);
}
