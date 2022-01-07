
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct rose_sock {unsigned short va; unsigned short vs; } ;


 unsigned short ROSE_MODULUS ;
 struct rose_sock* rose_sk (struct sock*) ;

int rose_validate_nr(struct sock *sk, unsigned short nr)
{
 struct rose_sock *rose = rose_sk(sk);
 unsigned short vc = rose->va;

 while (vc != rose->vs) {
  if (nr == vc) return 1;
  vc = (vc + 1) % ROSE_MODULUS;
 }

 return nr == rose->vs;
}
