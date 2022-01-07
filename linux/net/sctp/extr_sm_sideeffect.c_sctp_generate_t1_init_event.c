
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct sctp_association {int dummy; } ;


 size_t SCTP_EVENT_TIMEOUT_T1_INIT ;
 struct sctp_association* asoc ;
 struct sctp_association* from_timer (int ,struct timer_list*,int ) ;
 int sctp_generate_timeout_event (struct sctp_association*,size_t) ;
 int * timers ;

__attribute__((used)) static void sctp_generate_t1_init_event(struct timer_list *t)
{
 struct sctp_association *asoc =
  from_timer(asoc, t, timers[SCTP_EVENT_TIMEOUT_T1_INIT]);

 sctp_generate_timeout_event(asoc, SCTP_EVENT_TIMEOUT_T1_INIT);
}
