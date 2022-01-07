
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {scalar_t__ len; } ;
struct TYPE_4__ {int dq_count; int dq_tstamp; int avg_dq_rate; int burst_time; } ;
struct pie_sched_data {TYPE_2__ vars; } ;
struct TYPE_3__ {int backlog; } ;
struct Qdisc {TYPE_1__ qstats; } ;
typedef int psched_time_t ;


 int DQCOUNT_INVALID ;
 int PIE_SCALE ;
 int QUEUE_THRESHOLD ;
 void* psched_get_time () ;
 struct pie_sched_data* qdisc_priv (struct Qdisc*) ;

__attribute__((used)) static void pie_process_dequeue(struct Qdisc *sch, struct sk_buff *skb)
{
 struct pie_sched_data *q = qdisc_priv(sch);
 int qlen = sch->qstats.backlog;





 if (qlen >= QUEUE_THRESHOLD && q->vars.dq_count == DQCOUNT_INVALID) {
  q->vars.dq_tstamp = psched_get_time();
  q->vars.dq_count = 0;
 }
 if (q->vars.dq_count != DQCOUNT_INVALID) {
  q->vars.dq_count += skb->len;

  if (q->vars.dq_count >= QUEUE_THRESHOLD) {
   psched_time_t now = psched_get_time();
   u32 dtime = now - q->vars.dq_tstamp;
   u32 count = q->vars.dq_count << PIE_SCALE;

   if (dtime == 0)
    return;

   count = count / dtime;

   if (q->vars.avg_dq_rate == 0)
    q->vars.avg_dq_rate = count;
   else
    q->vars.avg_dq_rate =
        (q->vars.avg_dq_rate -
         (q->vars.avg_dq_rate >> 3)) + (count >> 3);






   if (qlen < QUEUE_THRESHOLD) {
    q->vars.dq_count = DQCOUNT_INVALID;
   } else {
    q->vars.dq_count = 0;
    q->vars.dq_tstamp = psched_get_time();
   }

   if (q->vars.burst_time > 0) {
    if (q->vars.burst_time > dtime)
     q->vars.burst_time -= dtime;
    else
     q->vars.burst_time = 0;
   }
  }
 }
}
