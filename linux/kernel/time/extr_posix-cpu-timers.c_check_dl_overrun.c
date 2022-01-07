
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ dl_overrun; } ;
struct task_struct {TYPE_1__ dl; } ;


 int SEND_SIG_PRIV ;
 int SIGXCPU ;
 int __group_send_sig_info (int ,int ,struct task_struct*) ;

__attribute__((used)) static inline void check_dl_overrun(struct task_struct *tsk)
{
 if (tsk->dl.dl_overrun) {
  tsk->dl.dl_overrun = 0;
  __group_send_sig_info(SIGXCPU, SEND_SIG_PRIV, tsk);
 }
}
