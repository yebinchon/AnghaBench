
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int qidlestart; int qavg; } ;
struct gred_sched_data {TYPE_2__ vars; } ;
struct TYPE_3__ {int qidlestart; int qavg; } ;
struct gred_sched {TYPE_1__ wred_set; } ;



__attribute__((used)) static inline void gred_store_wred_set(struct gred_sched *table,
           struct gred_sched_data *q)
{
 table->wred_set.qavg = q->vars.qavg;
 table->wred_set.qidlestart = q->vars.qidlestart;
}
