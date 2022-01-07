
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct nr_sock {unsigned short vr; unsigned short vl; unsigned short window; } ;


 unsigned short NR_MODULUS ;
 struct nr_sock* nr_sk (struct sock*) ;

int nr_in_rx_window(struct sock *sk, unsigned short ns)
{
 struct nr_sock *nr = nr_sk(sk);
 unsigned short vc = nr->vr;
 unsigned short vt = (nr->vl + nr->window) % NR_MODULUS;

 while (vc != vt) {
  if (ns == vc) return 1;
  vc = (vc + 1) % NR_MODULUS;
 }

 return 0;
}
