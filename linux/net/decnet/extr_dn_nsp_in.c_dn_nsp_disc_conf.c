
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int (* sk_state_change ) (struct sock*) ;TYPE_1__* sk_socket; int sk_shutdown; int sk_state; } ;
struct sk_buff {int len; scalar_t__ data; } ;
struct dn_scp {int state; int persist; int persist_fxn; } ;
typedef int __le16 ;
struct TYPE_2__ {scalar_t__ state; } ;




 void* DN_CN ;

 int DN_DIC ;

 int DN_DRC ;
 int DN_NR ;

 struct dn_scp* DN_SK (struct sock*) ;
 unsigned short NSP_REASON_DC ;
 unsigned short NSP_REASON_NL ;
 int SHUTDOWN_MASK ;
 int SOCK_DEAD ;
 scalar_t__ SS_DISCONNECTING ;
 scalar_t__ SS_UNCONNECTED ;
 int TCP_CLOSE ;
 int dn_destroy_timer ;
 int dn_nsp_persist (struct sock*) ;
 int kfree_skb (struct sk_buff*) ;
 unsigned short le16_to_cpu (int ) ;
 int sock_flag (struct sock*,int ) ;
 int stub1 (struct sock*) ;

__attribute__((used)) static void dn_nsp_disc_conf(struct sock *sk, struct sk_buff *skb)
{
 struct dn_scp *scp = DN_SK(sk);
 unsigned short reason;

 if (skb->len != 2)
  goto out;

 reason = le16_to_cpu(*(__le16 *)skb->data);

 sk->sk_state = TCP_CLOSE;

 switch (scp->state) {
 case 131:
  scp->state = DN_NR;
  break;
 case 129:
  if (reason == NSP_REASON_DC)
   scp->state = DN_DRC;
  if (reason == NSP_REASON_NL)
   scp->state = DN_CN;
  break;
 case 130:
  scp->state = DN_DIC;
  break;
 case 128:
  sk->sk_shutdown |= SHUTDOWN_MASK;

 case 132:
  scp->state = DN_CN;
 }

 if (!sock_flag(sk, SOCK_DEAD)) {
  if (sk->sk_socket->state != SS_UNCONNECTED)
   sk->sk_socket->state = SS_DISCONNECTING;
  sk->sk_state_change(sk);
 }

 scp->persist_fxn = dn_destroy_timer;
 scp->persist = dn_nsp_persist(sk);

out:
 kfree_skb(skb);
}
