
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hrtimer {int function; } ;
struct sched_dl_entity {struct hrtimer inactive_timer; } ;


 int CLOCK_MONOTONIC ;
 int HRTIMER_MODE_REL_HARD ;
 int hrtimer_init (struct hrtimer*,int ,int ) ;
 int inactive_task_timer ;

void init_dl_inactive_task_timer(struct sched_dl_entity *dl_se)
{
 struct hrtimer *timer = &dl_se->inactive_timer;

 hrtimer_init(timer, CLOCK_MONOTONIC, HRTIMER_MODE_REL_HARD);
 timer->function = inactive_task_timer;
}
