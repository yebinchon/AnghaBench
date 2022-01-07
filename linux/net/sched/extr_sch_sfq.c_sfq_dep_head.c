
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sfq_sched_data {struct sfq_head* dep; TYPE_1__* slots; } ;
struct sfq_head {int dummy; } ;
typedef size_t sfq_index ;
struct TYPE_2__ {struct sfq_head dep; } ;


 size_t SFQ_MAX_FLOWS ;

__attribute__((used)) static inline struct sfq_head *sfq_dep_head(struct sfq_sched_data *q, sfq_index val)
{
 if (val < SFQ_MAX_FLOWS)
  return &q->slots[val].dep;
 return &q->dep[val - SFQ_MAX_FLOWS];
}
