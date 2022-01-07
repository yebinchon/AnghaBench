
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_6__ {int qdelay; int qdelay_old; int avg_dq_rate; int prob; int qlen_old; } ;
struct TYPE_5__ {int target; scalar_t__ beta; scalar_t__ alpha; } ;
struct pie_sched_data {TYPE_3__ vars; TYPE_2__ params; } ;
struct TYPE_4__ {int backlog; } ;
struct Qdisc {TYPE_1__ qstats; } ;
typedef int s64 ;
typedef int psched_time_t ;


 int MAX_PROB ;
 int NSEC_PER_MSEC ;
 int PIE_SCALE ;
 int PSCHED_NS2TICKS (int) ;
 int PSCHED_TICKS_PER_SEC ;
 int div_u64 (int,int) ;
 int pie_vars_init (TYPE_3__*) ;
 struct pie_sched_data* qdisc_priv (struct Qdisc*) ;

__attribute__((used)) static void calculate_probability(struct Qdisc *sch)
{
 struct pie_sched_data *q = qdisc_priv(sch);
 u32 qlen = sch->qstats.backlog;
 psched_time_t qdelay = 0;
 psched_time_t qdelay_old = q->vars.qdelay;
 s64 delta = 0;
 u64 oldprob;
 u64 alpha, beta;
 u32 power;
 bool update_prob = 1;

 q->vars.qdelay_old = q->vars.qdelay;

 if (q->vars.avg_dq_rate > 0)
  qdelay = (qlen << PIE_SCALE) / q->vars.avg_dq_rate;
 else
  qdelay = 0;




 if (qdelay == 0 && qlen != 0)
  update_prob = 0;
 alpha = ((u64)q->params.alpha * (MAX_PROB / PSCHED_TICKS_PER_SEC)) >> 4;
 beta = ((u64)q->params.beta * (MAX_PROB / PSCHED_TICKS_PER_SEC)) >> 4;




 if (q->vars.prob < MAX_PROB / 10) {
  alpha >>= 1;
  beta >>= 1;

  power = 100;
  while (q->vars.prob < div_u64(MAX_PROB, power) &&
         power <= 1000000) {
   alpha >>= 2;
   beta >>= 2;
   power *= 10;
  }
 }


 delta += alpha * (u64)(qdelay - q->params.target);
 delta += beta * (u64)(qdelay - qdelay_old);

 oldprob = q->vars.prob;


 if (delta > (s64)(MAX_PROB / (100 / 2)) &&
     q->vars.prob >= MAX_PROB / 10)
  delta = (MAX_PROB / 100) * 2;






 if (qdelay > (PSCHED_NS2TICKS(250 * NSEC_PER_MSEC)))
  delta += MAX_PROB / (100 / 2);

 q->vars.prob += delta;

 if (delta > 0) {

  if (q->vars.prob < oldprob) {
   q->vars.prob = MAX_PROB;





   update_prob = 0;
  }
 } else {

  if (q->vars.prob > oldprob)
   q->vars.prob = 0;
 }





 if (qdelay == 0 && qdelay_old == 0 && update_prob)

  q->vars.prob -= q->vars.prob / 64u;

 q->vars.qdelay = qdelay;
 q->vars.qlen_old = qlen;







 if ((q->vars.qdelay < q->params.target / 2) &&
     (q->vars.qdelay_old < q->params.target / 2) &&
     q->vars.prob == 0 &&
     q->vars.avg_dq_rate > 0)
  pie_vars_init(&q->vars);
}
