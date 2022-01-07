
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sock {int sk_state; } ;
struct TYPE_2__ {int dccps_server_timewait; int dccps_role; } ;


 int DCCP_ACTIVE_CLOSEREQ ;
 int DCCP_CLOSED ;
 int DCCP_CLOSING ;




 int DCCP_ROLE_SERVER ;
 int ICSK_TIME_DACK ;
 int dccp_finish_passive_close (struct sock*) ;
 int dccp_pr_debug (char*,struct sock*) ;
 int dccp_send_close (struct sock*,int) ;
 int dccp_set_state (struct sock*,int ) ;
 TYPE_1__* dccp_sk (struct sock*) ;
 int inet_csk_clear_xmit_timer (struct sock*,int ) ;

__attribute__((used)) static void dccp_terminate_connection(struct sock *sk)
{
 u8 next_state = DCCP_CLOSED;

 switch (sk->sk_state) {
 case 129:
 case 128:
  dccp_finish_passive_close(sk);
  break;
 case 130:
  dccp_pr_debug("Stop PARTOPEN timer (%p)\n", sk);
  inet_csk_clear_xmit_timer(sk, ICSK_TIME_DACK);

 case 131:
  dccp_send_close(sk, 1);

  if (dccp_sk(sk)->dccps_role == DCCP_ROLE_SERVER &&
      !dccp_sk(sk)->dccps_server_timewait)
   next_state = DCCP_ACTIVE_CLOSEREQ;
  else
   next_state = DCCP_CLOSING;

 default:
  dccp_set_state(sk, next_state);
 }
}
