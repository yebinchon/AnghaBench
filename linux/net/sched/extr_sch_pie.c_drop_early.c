
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_6__ {int prob; scalar_t__ burst_time; int qdelay; int accu_prob; int accu_prob_overflows; } ;
struct TYPE_5__ {int target; scalar_t__ bytemode; } ;
struct pie_sched_data {TYPE_3__ vars; TYPE_2__ params; } ;
struct TYPE_4__ {int backlog; } ;
struct Qdisc {TYPE_1__ qstats; } ;


 int MAX_PROB ;
 int div_u64 (int,int) ;
 int prandom_bytes (int*,int) ;
 int psched_mtu (int ) ;
 int qdisc_dev (struct Qdisc*) ;
 struct pie_sched_data* qdisc_priv (struct Qdisc*) ;

__attribute__((used)) static bool drop_early(struct Qdisc *sch, u32 packet_size)
{
 struct pie_sched_data *q = qdisc_priv(sch);
 u64 rnd;
 u64 local_prob = q->vars.prob;
 u32 mtu = psched_mtu(qdisc_dev(sch));


 if (q->vars.burst_time > 0)
  return 0;




 if ((q->vars.qdelay < q->params.target / 2) &&
     (q->vars.prob < MAX_PROB / 5))
  return 0;




 if (sch->qstats.backlog < 2 * mtu)
  return 0;




 if (q->params.bytemode && packet_size <= mtu)
  local_prob = (u64)packet_size * div_u64(local_prob, mtu);
 else
  local_prob = q->vars.prob;

 if (local_prob == 0) {
  q->vars.accu_prob = 0;
  q->vars.accu_prob_overflows = 0;
 }

 if (local_prob > MAX_PROB - q->vars.accu_prob)
  q->vars.accu_prob_overflows++;

 q->vars.accu_prob += local_prob;

 if (q->vars.accu_prob_overflows == 0 &&
     q->vars.accu_prob < (MAX_PROB / 100) * 85)
  return 0;
 if (q->vars.accu_prob_overflows == 8 &&
     q->vars.accu_prob >= MAX_PROB / 2)
  return 1;

 prandom_bytes(&rnd, 8);
 if (rnd < local_prob) {
  q->vars.accu_prob = 0;
  q->vars.accu_prob_overflows = 0;
  return 1;
 }

 return 0;
}
