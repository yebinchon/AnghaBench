
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct sock {int dummy; } ;
struct TYPE_3__ {struct sock sk; } ;
struct TYPE_4__ {TYPE_1__ icsk_inet; } ;
struct dccp_sock {TYPE_2__ dccps_inet_connection; } ;


 int dccp_write_xmitlet (unsigned long) ;
 int dccps_xmit_timer ;
 struct dccp_sock* dp ;
 struct dccp_sock* from_timer (int ,struct timer_list*,int ) ;

__attribute__((used)) static void dccp_write_xmit_timer(struct timer_list *t)
{
 struct dccp_sock *dp = from_timer(dp, t, dccps_xmit_timer);
 struct sock *sk = &dp->dccps_inet_connection.icsk_inet.sk;

 dccp_write_xmitlet((unsigned long)sk);
}
