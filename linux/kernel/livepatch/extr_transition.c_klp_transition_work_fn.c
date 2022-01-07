
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 int klp_mutex ;
 scalar_t__ klp_transition_patch ;
 int klp_try_complete_transition () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void klp_transition_work_fn(struct work_struct *work)
{
 mutex_lock(&klp_mutex);

 if (klp_transition_patch)
  klp_try_complete_transition();

 mutex_unlock(&klp_mutex);
}
