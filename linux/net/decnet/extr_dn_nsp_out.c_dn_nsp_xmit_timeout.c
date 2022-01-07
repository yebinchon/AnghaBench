
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct dn_scp {int persist; int other_xmit_queue; int data_xmit_queue; } ;


 struct dn_scp* DN_SK (struct sock*) ;
 int dn_nsp_output (struct sock*) ;
 int dn_nsp_persist (struct sock*) ;
 int skb_queue_empty (int *) ;

int dn_nsp_xmit_timeout(struct sock *sk)
{
 struct dn_scp *scp = DN_SK(sk);

 dn_nsp_output(sk);

 if (!skb_queue_empty(&scp->data_xmit_queue) ||
     !skb_queue_empty(&scp->other_xmit_queue))
  scp->persist = dn_nsp_persist(sk);

 return 0;
}
