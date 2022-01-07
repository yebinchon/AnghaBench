
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int comm; } ;


 int strncpy (char*,int ,size_t) ;
 int task_lock (struct task_struct*) ;
 int task_unlock (struct task_struct*) ;

char *__get_task_comm(char *buf, size_t buf_size, struct task_struct *tsk)
{
 task_lock(tsk);
 strncpy(buf, tsk->comm, buf_size);
 task_unlock(tsk);
 return buf;
}
