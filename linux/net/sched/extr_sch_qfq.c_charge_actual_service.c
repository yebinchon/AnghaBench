
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;
struct qfq_aggregate {int inv_w; scalar_t__ S; scalar_t__ F; scalar_t__ budget; scalar_t__ initial_budget; int budgetmax; } ;


 scalar_t__ min (int ,scalar_t__) ;

__attribute__((used)) static inline void charge_actual_service(struct qfq_aggregate *agg)
{





 u32 service_received = min(agg->budgetmax,
       agg->initial_budget - agg->budget);

 agg->F = agg->S + (u64)service_received * agg->inv_w;
}
