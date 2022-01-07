
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int qidlestart; int qavg; } ;
struct gred_sched_data {TYPE_1__ vars; } ;
struct TYPE_4__ {int qidlestart; int qavg; } ;
struct gred_sched {TYPE_2__ wred_set; } ;



__attribute__((used)) static inline void gred_load_wred_set(const struct gred_sched *table,
          struct gred_sched_data *q)
{
 q->vars.qavg = table->wred_set.qavg;
 q->vars.qidlestart = table->wred_set.qidlestart;
}
