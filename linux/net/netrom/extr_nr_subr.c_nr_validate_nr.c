
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct nr_sock {unsigned short va; unsigned short vs; } ;


 unsigned short NR_MODULUS ;
 struct nr_sock* nr_sk (struct sock*) ;

int nr_validate_nr(struct sock *sk, unsigned short nr)
{
 struct nr_sock *nrom = nr_sk(sk);
 unsigned short vc = nrom->va;

 while (vc != nrom->vs) {
  if (nr == vc) return 1;
  vc = (vc + 1) % NR_MODULUS;
 }

 return nr == nrom->vs;
}
