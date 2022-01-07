
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int sk_state; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int dccps_role; } ;
 int DCCP_RESET_CODE_CLOSED ;
 int DCCP_ROLE_CLIENT ;
 int POLL_HUP ;
 int SOCK_WAKE_WAITD ;
 int dccp_done (struct sock*) ;
 int dccp_fin (struct sock*,struct sk_buff*) ;
 int dccp_send_reset (struct sock*,int ) ;
 int dccp_set_state (struct sock*,int) ;
 TYPE_1__* dccp_sk (struct sock*) ;
 int sk_wake_async (struct sock*,int ,int ) ;

__attribute__((used)) static int dccp_rcv_close(struct sock *sk, struct sk_buff *skb)
{
 int queued = 0;

 switch (sk->sk_state) {






 case 132:
  if (dccp_sk(sk)->dccps_role != DCCP_ROLE_CLIENT)
   break;

 case 128:
 case 133:
  dccp_send_reset(sk, DCCP_RESET_CODE_CLOSED);
  dccp_done(sk);
  break;
 case 131:
 case 130:

  queued = 1;
  dccp_fin(sk, skb);
  dccp_set_state(sk, 129);

 case 129:



  sk_wake_async(sk, SOCK_WAKE_WAITD, POLL_HUP);
 }
 return queued;
}
