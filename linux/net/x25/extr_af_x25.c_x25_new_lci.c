
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct x25_neigh {int dummy; } ;
struct sock {int dummy; } ;


 int cond_resched () ;
 int sock_put (struct sock*) ;
 struct sock* x25_find_socket (unsigned int,struct x25_neigh*) ;

__attribute__((used)) static unsigned int x25_new_lci(struct x25_neigh *nb)
{
 unsigned int lci = 1;
 struct sock *sk;

 while ((sk = x25_find_socket(lci, nb)) != ((void*)0)) {
  sock_put(sk);
  if (++lci == 4096) {
   lci = 0;
   break;
  }
  cond_resched();
 }

 return lci;
}
