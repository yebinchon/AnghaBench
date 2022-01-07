
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int signal; } ;
struct task_struct {TYPE_3__* signal; TYPE_1__ pending; } ;
struct TYPE_5__ {int signal; } ;
struct TYPE_6__ {TYPE_2__ shared_pending; } ;


 int SIGKILL ;
 scalar_t__ sigismember (int *,int ) ;

__attribute__((used)) static bool sigkill_pending(struct task_struct *tsk)
{
 return sigismember(&tsk->pending.signal, SIGKILL) ||
        sigismember(&tsk->signal->shared_pending.signal, SIGKILL);
}
