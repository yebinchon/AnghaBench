
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct dn_scp {int other_xmit_queue; } ;


 int DN_NOCHANGE ;
 struct dn_scp* DN_SK (struct sock*) ;
 int dn_nsp_send_link (struct sock*,int ,int ) ;
 scalar_t__ skb_queue_empty (int *) ;

__attribute__((used)) static void dn_keepalive(struct sock *sk)
{
 struct dn_scp *scp = DN_SK(sk);






 if (skb_queue_empty(&scp->other_xmit_queue))
  dn_nsp_send_link(sk, DN_NOCHANGE, 0);
}
