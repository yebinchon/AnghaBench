
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct proc_maps_private* private; } ;
struct proc_maps_private {int * task; } ;


 int IS_ERR_OR_NULL (void*) ;
 int put_task_struct (int *) ;
 int vma_stop (struct proc_maps_private*) ;

__attribute__((used)) static void m_stop(struct seq_file *m, void *v)
{
 struct proc_maps_private *priv = m->private;

 if (!IS_ERR_OR_NULL(v))
  vma_stop(priv);
 if (priv->task) {
  put_task_struct(priv->task);
  priv->task = ((void*)0);
 }
}
