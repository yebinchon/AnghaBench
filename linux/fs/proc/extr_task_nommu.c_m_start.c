
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct proc_maps_private* private; } ;
typedef void rb_node ;
struct proc_maps_private {struct mm_struct* mm; int task; int inode; } ;
struct mm_struct {int mmap_sem; int mm_rb; } ;
typedef int loff_t ;


 int EINTR ;
 void* ERR_PTR (int ) ;
 int ESRCH ;
 scalar_t__ down_read_killable (int *) ;
 int get_proc_task (int ) ;
 int mmget_not_zero (struct mm_struct*) ;
 int mmput (struct mm_struct*) ;
 void* rb_first (int *) ;
 void* rb_next (void*) ;
 int up_read (int *) ;

__attribute__((used)) static void *m_start(struct seq_file *m, loff_t *pos)
{
 struct proc_maps_private *priv = m->private;
 struct mm_struct *mm;
 struct rb_node *p;
 loff_t n = *pos;


 priv->task = get_proc_task(priv->inode);
 if (!priv->task)
  return ERR_PTR(-ESRCH);

 mm = priv->mm;
 if (!mm || !mmget_not_zero(mm))
  return ((void*)0);

 if (down_read_killable(&mm->mmap_sem)) {
  mmput(mm);
  return ERR_PTR(-EINTR);
 }


 for (p = rb_first(&mm->mm_rb); p; p = rb_next(p))
  if (n-- == 0)
   return p;

 up_read(&mm->mmap_sem);
 mmput(mm);
 return ((void*)0);
}
