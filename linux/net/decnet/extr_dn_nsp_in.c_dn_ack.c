
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int (* sk_state_change ) (struct sock*) ;} ;
struct sk_buff {int dummy; } ;
struct dn_scp {unsigned short ackrcv_dat; unsigned short ackrcv_oth; int other_xmit_queue; int data_xmit_queue; } ;


 struct dn_scp* DN_SK (struct sock*) ;
 int SOCK_DEAD ;
 int dn_after (unsigned short,unsigned short) ;
 int dn_nsp_check_xmit_queue (struct sock*,struct sk_buff*,int *,unsigned short) ;
 int sock_flag (struct sock*,int ) ;
 int stub1 (struct sock*) ;

__attribute__((used)) static void dn_ack(struct sock *sk, struct sk_buff *skb, unsigned short ack)
{
 struct dn_scp *scp = DN_SK(sk);
 unsigned short type = ((ack >> 12) & 0x0003);
 int wakeup = 0;

 switch (type) {
 case 0:
  if (dn_after(ack, scp->ackrcv_dat)) {
   scp->ackrcv_dat = ack & 0x0fff;
   wakeup |= dn_nsp_check_xmit_queue(sk, skb,
         &scp->data_xmit_queue,
         ack);
  }
  break;
 case 1:
  break;
 case 2:
  if (dn_after(ack, scp->ackrcv_oth)) {
   scp->ackrcv_oth = ack & 0x0fff;
   wakeup |= dn_nsp_check_xmit_queue(sk, skb,
         &scp->other_xmit_queue,
         ack);
  }
  break;
 case 3:
  break;
 }

 if (wakeup && !sock_flag(sk, SOCK_DEAD))
  sk->sk_state_change(sk);
}
