
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srcu_data {int dummy; } ;


 int srcu_queue_delayed_work_on (struct srcu_data*,unsigned long) ;

__attribute__((used)) static void srcu_schedule_cbs_sdp(struct srcu_data *sdp, unsigned long delay)
{
 srcu_queue_delayed_work_on(sdp, delay);
}
