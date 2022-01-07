
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct task_struct {TYPE_3__* sighand; } ;
struct TYPE_6__ {TYPE_2__* action; } ;
struct TYPE_4__ {int sa_handler; } ;
struct TYPE_5__ {TYPE_1__ sa; } ;


 int SIG_IGN ;
 int _NSIG ;
 int flush_signals (struct task_struct*) ;

void ignore_signals(struct task_struct *t)
{
 int i;

 for (i = 0; i < _NSIG; ++i)
  t->sighand->action[i].sa.sa_handler = SIG_IGN;

 flush_signals(t);
}
