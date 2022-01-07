
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct packet_sock {int running; int prot_hook; scalar_t__ fanout; } ;


 int __fanout_link (struct sock*,struct packet_sock*) ;
 int dev_add_pack (int *) ;
 struct packet_sock* pkt_sk (struct sock*) ;
 int sock_hold (struct sock*) ;

__attribute__((used)) static void __register_prot_hook(struct sock *sk)
{
 struct packet_sock *po = pkt_sk(sk);

 if (!po->running) {
  if (po->fanout)
   __fanout_link(sk, po);
  else
   dev_add_pack(&po->prot_hook);

  sock_hold(sk);
  po->running = 1;
 }
}
