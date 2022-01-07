
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {struct proc_maps_private* private; } ;
struct proc_maps_private {int * task; TYPE_1__* mm; } ;
struct TYPE_2__ {int mmap_sem; } ;


 int IS_ERR_OR_NULL (void*) ;
 int mmput (TYPE_1__*) ;
 int put_task_struct (int *) ;
 int up_read (int *) ;

__attribute__((used)) static void m_stop(struct seq_file *m, void *_vml)
{
 struct proc_maps_private *priv = m->private;

 if (!IS_ERR_OR_NULL(_vml)) {
  up_read(&priv->mm->mmap_sem);
  mmput(priv->mm);
 }
 if (priv->task) {
  put_task_struct(priv->task);
  priv->task = ((void*)0);
 }
}
