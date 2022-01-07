
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct per_cpu_dm_data {int dm_alert_work; } ;


 struct per_cpu_dm_data* data ;
 struct per_cpu_dm_data* from_timer (int ,struct timer_list*,int ) ;
 int schedule_work (int *) ;
 int send_timer ;

__attribute__((used)) static void sched_send_work(struct timer_list *t)
{
 struct per_cpu_dm_data *data = from_timer(data, t, send_timer);

 schedule_work(&data->dm_alert_work);
}
