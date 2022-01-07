
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;


 int ICSK_TIME_DACK ;
 int inet_csk_clear_xmit_timer (struct sock*,int ) ;

__attribute__((used)) static inline void dccp_event_ack_sent(struct sock *sk)
{
 inet_csk_clear_xmit_timer(sk, ICSK_TIME_DACK);
}
