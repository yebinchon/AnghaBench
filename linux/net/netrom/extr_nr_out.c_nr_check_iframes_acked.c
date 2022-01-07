
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct nr_sock {unsigned short vs; unsigned short va; scalar_t__ n2count; } ;


 int nr_frames_acked (struct sock*,unsigned short) ;
 struct nr_sock* nr_sk (struct sock*) ;
 int nr_start_t1timer (struct sock*) ;
 int nr_stop_t1timer (struct sock*) ;

void nr_check_iframes_acked(struct sock *sk, unsigned short nr)
{
 struct nr_sock *nrom = nr_sk(sk);

 if (nrom->vs == nr) {
  nr_frames_acked(sk, nr);
  nr_stop_t1timer(sk);
  nrom->n2count = 0;
 } else {
  if (nrom->va != nr) {
   nr_frames_acked(sk, nr);
   nr_start_t1timer(sk);
  }
 }
}
