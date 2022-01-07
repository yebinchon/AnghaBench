
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int fs; } ;
struct fs_struct {int lock; int users; scalar_t__ in_exec; } ;
struct TYPE_2__ {struct fs_struct* fs; } ;


 unsigned long CLONE_FS ;
 int EAGAIN ;
 int ENOMEM ;
 int copy_fs_struct (struct fs_struct*) ;
 TYPE_1__* current ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int copy_fs(unsigned long clone_flags, struct task_struct *tsk)
{
 struct fs_struct *fs = current->fs;
 if (clone_flags & CLONE_FS) {

  spin_lock(&fs->lock);
  if (fs->in_exec) {
   spin_unlock(&fs->lock);
   return -EAGAIN;
  }
  fs->users++;
  spin_unlock(&fs->lock);
  return 0;
 }
 tsk->fs = copy_fs_struct(fs);
 if (!tsk->fs)
  return -ENOMEM;
 return 0;
}
