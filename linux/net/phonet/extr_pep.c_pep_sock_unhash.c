
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct TYPE_2__ {int sk; } ;
struct pep_sock {TYPE_1__ pn_sk; int hlist; struct sock* listener; } ;


 scalar_t__ hlist_empty (int *) ;
 int lock_sock (struct sock*) ;
 struct pep_sock* pep_sk (struct sock*) ;
 int pn_sock_unhash (int *) ;
 int release_sock (struct sock*) ;
 int sk_del_node_init (struct sock*) ;
 int sock_put (struct sock*) ;

__attribute__((used)) static void pep_sock_unhash(struct sock *sk)
{
 struct pep_sock *pn = pep_sk(sk);
 struct sock *skparent = ((void*)0);

 lock_sock(sk);

 if (pn->listener != ((void*)0)) {
  skparent = pn->listener;
  pn->listener = ((void*)0);
  release_sock(sk);

  pn = pep_sk(skparent);
  lock_sock(skparent);
  sk_del_node_init(sk);
  sk = skparent;
 }



 if (hlist_empty(&pn->hlist))
  pn_sock_unhash(&pn->pn_sk.sk);
 release_sock(sk);

 if (skparent)
  sock_put(skparent);
}
