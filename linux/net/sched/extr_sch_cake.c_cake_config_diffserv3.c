
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct cake_sched_data {int rate_bps; int tin_cnt; TYPE_1__* tins; int interval; int target; int tin_order; int tin_index; } ;
struct Qdisc {int dummy; } ;
struct TYPE_2__ {int tin_quantum_prio; int tin_quantum_band; } ;


 int bulk_order ;
 int cake_set_rate (TYPE_1__*,int,int,int ,int ) ;
 int diffserv3 ;
 int psched_mtu (int ) ;
 int qdisc_dev (struct Qdisc*) ;
 struct cake_sched_data* qdisc_priv (struct Qdisc*) ;
 int us_to_ns (int ) ;

__attribute__((used)) static int cake_config_diffserv3(struct Qdisc *sch)
{





 struct cake_sched_data *q = qdisc_priv(sch);
 u32 mtu = psched_mtu(qdisc_dev(sch));
 u64 rate = q->rate_bps;
 u32 quantum = 1024;

 q->tin_cnt = 3;


 q->tin_index = diffserv3;
 q->tin_order = bulk_order;


 cake_set_rate(&q->tins[0], rate, mtu,
        us_to_ns(q->target), us_to_ns(q->interval));
 cake_set_rate(&q->tins[1], rate >> 4, mtu,
        us_to_ns(q->target), us_to_ns(q->interval));
 cake_set_rate(&q->tins[2], rate >> 2, mtu,
        us_to_ns(q->target), us_to_ns(q->interval));


 q->tins[0].tin_quantum_prio = quantum;
 q->tins[1].tin_quantum_prio = quantum >> 4;
 q->tins[2].tin_quantum_prio = quantum << 4;


 q->tins[0].tin_quantum_band = quantum;
 q->tins[1].tin_quantum_band = quantum >> 4;
 q->tins[2].tin_quantum_band = quantum >> 2;

 return 0;
}
