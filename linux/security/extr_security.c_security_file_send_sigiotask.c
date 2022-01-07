
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct fown_struct {int dummy; } ;


 int call_int_hook (int ,int ,struct task_struct*,struct fown_struct*,int) ;
 int file_send_sigiotask ;

int security_file_send_sigiotask(struct task_struct *tsk,
      struct fown_struct *fown, int sig)
{
 return call_int_hook(file_send_sigiotask, 0, tsk, fown, sig);
}
