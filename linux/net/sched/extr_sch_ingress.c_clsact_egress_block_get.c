
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int block_index; } ;
struct clsact_sched_data {TYPE_1__ egress_block_info; } ;
struct Qdisc {int dummy; } ;


 struct clsact_sched_data* qdisc_priv (struct Qdisc*) ;

__attribute__((used)) static u32 clsact_egress_block_get(struct Qdisc *sch)
{
 struct clsact_sched_data *q = qdisc_priv(sch);

 return q->egress_block_info.block_index;
}
