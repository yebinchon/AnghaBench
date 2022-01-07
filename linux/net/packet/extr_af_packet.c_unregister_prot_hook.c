
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct packet_sock {scalar_t__ running; } ;


 int __unregister_prot_hook (struct sock*,int) ;
 struct packet_sock* pkt_sk (struct sock*) ;

__attribute__((used)) static void unregister_prot_hook(struct sock *sk, bool sync)
{
 struct packet_sock *po = pkt_sk(sk);

 if (po->running)
  __unregister_prot_hook(sk, sync);
}
