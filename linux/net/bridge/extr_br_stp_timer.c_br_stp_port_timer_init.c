
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge_port {int hold_timer; int forward_delay_timer; int message_age_timer; } ;


 int br_forward_delay_timer_expired ;
 int br_hold_timer_expired ;
 int br_message_age_timer_expired ;
 int timer_setup (int *,int ,int ) ;

void br_stp_port_timer_init(struct net_bridge_port *p)
{
 timer_setup(&p->message_age_timer, br_message_age_timer_expired, 0);
 timer_setup(&p->forward_delay_timer, br_forward_delay_timer_expired, 0);
 timer_setup(&p->hold_timer, br_hold_timer_expired, 0);
}
