
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef size_t u32 ;
struct cake_tin_data {void* tin_quantum_band; void* tin_quantum_prio; } ;
struct cake_sched_data {int rate_bps; int tin_cnt; int interval; int target; struct cake_tin_data* tins; int tin_order; int tin_index; } ;
struct Qdisc {int dummy; } ;


 int cake_set_rate (struct cake_tin_data*,int,size_t,int ,int ) ;
 void* max_t (int ,unsigned int,size_t) ;
 int normal_order ;
 int precedence ;
 size_t psched_mtu (int ) ;
 int qdisc_dev (struct Qdisc*) ;
 struct cake_sched_data* qdisc_priv (struct Qdisc*) ;
 int u16 ;
 int us_to_ns (int ) ;

__attribute__((used)) static int cake_config_precedence(struct Qdisc *sch)
{

 struct cake_sched_data *q = qdisc_priv(sch);
 u32 mtu = psched_mtu(qdisc_dev(sch));
 u64 rate = q->rate_bps;
 u32 quantum1 = 256;
 u32 quantum2 = 256;
 u32 i;

 q->tin_cnt = 8;
 q->tin_index = precedence;
 q->tin_order = normal_order;

 for (i = 0; i < q->tin_cnt; i++) {
  struct cake_tin_data *b = &q->tins[i];

  cake_set_rate(b, rate, mtu, us_to_ns(q->target),
         us_to_ns(q->interval));

  b->tin_quantum_prio = max_t(u16, 1U, quantum1);
  b->tin_quantum_band = max_t(u16, 1U, quantum2);


  rate *= 7;
  rate >>= 3;

  quantum1 *= 3;
  quantum1 >>= 1;

  quantum2 *= 7;
  quantum2 >>= 3;
 }

 return 0;
}
