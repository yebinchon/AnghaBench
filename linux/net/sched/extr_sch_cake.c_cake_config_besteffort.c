
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct cake_tin_data {int tin_quantum_band; int tin_quantum_prio; } ;
struct cake_sched_data {int tin_cnt; int interval; int target; int tin_order; int tin_index; int rate_bps; struct cake_tin_data* tins; } ;
struct Qdisc {int dummy; } ;


 int besteffort ;
 int cake_set_rate (struct cake_tin_data*,int ,int ,int ,int ) ;
 int normal_order ;
 int psched_mtu (int ) ;
 int qdisc_dev (struct Qdisc*) ;
 struct cake_sched_data* qdisc_priv (struct Qdisc*) ;
 int us_to_ns (int ) ;

__attribute__((used)) static int cake_config_besteffort(struct Qdisc *sch)
{
 struct cake_sched_data *q = qdisc_priv(sch);
 struct cake_tin_data *b = &q->tins[0];
 u32 mtu = psched_mtu(qdisc_dev(sch));
 u64 rate = q->rate_bps;

 q->tin_cnt = 1;

 q->tin_index = besteffort;
 q->tin_order = normal_order;

 cake_set_rate(b, rate, mtu,
        us_to_ns(q->target), us_to_ns(q->interval));
 b->tin_quantum_band = 65535;
 b->tin_quantum_prio = 65535;

 return 0;
}
