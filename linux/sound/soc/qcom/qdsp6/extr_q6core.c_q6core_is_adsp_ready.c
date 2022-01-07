
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; } ;


 int ADSP_STATE_READY_TIMEOUT_MS ;
 scalar_t__ __q6core_is_adsp_ready (TYPE_1__*) ;
 TYPE_1__* g_core ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int time_after (unsigned long,unsigned long) ;

bool q6core_is_adsp_ready(void)
{
 unsigned long timeout;
 bool ret = 0;

 if (!g_core)
  return 0;

 mutex_lock(&g_core->lock);
 timeout = jiffies + msecs_to_jiffies(ADSP_STATE_READY_TIMEOUT_MS);
 for (;;) {
  if (__q6core_is_adsp_ready(g_core)) {
   ret = 1;
   break;
  }

  if (!time_after(timeout, jiffies)) {
   ret = 0;
   break;
  }
 }

 mutex_unlock(&g_core->lock);
 return ret;
}
