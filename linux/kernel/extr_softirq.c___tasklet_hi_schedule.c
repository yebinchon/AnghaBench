
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tasklet_struct {int dummy; } ;


 int HI_SOFTIRQ ;
 int __tasklet_schedule_common (struct tasklet_struct*,int *,int ) ;
 int tasklet_hi_vec ;

void __tasklet_hi_schedule(struct tasklet_struct *t)
{
 __tasklet_schedule_common(t, &tasklet_hi_vec,
      HI_SOFTIRQ);
}
