
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {TYPE_1__* signal; } ;
struct TYPE_2__ {int cred_guard_mutex; } ;


 int mutex_unlock (int *) ;

__attribute__((used)) static void unlock_trace(struct task_struct *task)
{
 mutex_unlock(&task->signal->cred_guard_mutex);
}
