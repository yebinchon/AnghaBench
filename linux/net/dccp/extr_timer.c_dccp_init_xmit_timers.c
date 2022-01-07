
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct dccp_sock {int dccps_xmit_timer; int dccps_xmitlet; } ;


 int dccp_delack_timer ;
 int dccp_keepalive_timer ;
 struct dccp_sock* dccp_sk (struct sock*) ;
 int dccp_write_timer ;
 int dccp_write_xmit_timer ;
 int dccp_write_xmitlet ;
 int inet_csk_init_xmit_timers (struct sock*,int *,int *,int *) ;
 int tasklet_init (int *,int ,unsigned long) ;
 int timer_setup (int *,int ,int ) ;

void dccp_init_xmit_timers(struct sock *sk)
{
 struct dccp_sock *dp = dccp_sk(sk);

 tasklet_init(&dp->dccps_xmitlet, dccp_write_xmitlet, (unsigned long)sk);
 timer_setup(&dp->dccps_xmit_timer, dccp_write_xmit_timer, 0);
 inet_csk_init_xmit_timers(sk, &dccp_write_timer, &dccp_delack_timer,
      &dccp_keepalive_timer);
}
