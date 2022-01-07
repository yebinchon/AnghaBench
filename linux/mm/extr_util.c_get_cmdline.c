
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct mm_struct {unsigned long arg_end; unsigned long arg_start; unsigned long env_start; unsigned long env_end; int arg_lock; } ;


 int FOLL_FORCE ;
 int access_process_vm (struct task_struct*,unsigned long,char*,unsigned int,int ) ;
 struct mm_struct* get_task_mm (struct task_struct*) ;
 int mmput (struct mm_struct*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 void* strnlen (char*,int) ;

int get_cmdline(struct task_struct *task, char *buffer, int buflen)
{
 int res = 0;
 unsigned int len;
 struct mm_struct *mm = get_task_mm(task);
 unsigned long arg_start, arg_end, env_start, env_end;
 if (!mm)
  goto out;
 if (!mm->arg_end)
  goto out_mm;

 spin_lock(&mm->arg_lock);
 arg_start = mm->arg_start;
 arg_end = mm->arg_end;
 env_start = mm->env_start;
 env_end = mm->env_end;
 spin_unlock(&mm->arg_lock);

 len = arg_end - arg_start;

 if (len > buflen)
  len = buflen;

 res = access_process_vm(task, arg_start, buffer, len, FOLL_FORCE);





 if (res > 0 && buffer[res-1] != '\0' && len < buflen) {
  len = strnlen(buffer, res);
  if (len < res) {
   res = len;
  } else {
   len = env_end - env_start;
   if (len > buflen - res)
    len = buflen - res;
   res += access_process_vm(task, env_start,
       buffer+res, len,
       FOLL_FORCE);
   res = strnlen(buffer, res);
  }
 }
out_mm:
 mmput(mm);
out:
 return res;
}
