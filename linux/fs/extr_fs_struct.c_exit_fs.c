
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {struct fs_struct* fs; } ;
struct fs_struct {int lock; int users; } ;


 int free_fs_struct (struct fs_struct*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int task_lock (struct task_struct*) ;
 int task_unlock (struct task_struct*) ;

void exit_fs(struct task_struct *tsk)
{
 struct fs_struct *fs = tsk->fs;

 if (fs) {
  int kill;
  task_lock(tsk);
  spin_lock(&fs->lock);
  tsk->fs = ((void*)0);
  kill = !--fs->users;
  spin_unlock(&fs->lock);
  task_unlock(tsk);
  if (kill)
   free_fs_struct(fs);
 }
}
