
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void vm_area_struct ;
struct seq_file {struct proc_maps_private* private; } ;
struct proc_maps_private {int dummy; } ;
typedef int loff_t ;


 void* m_next_vma (struct proc_maps_private*,void*) ;
 int vma_stop (struct proc_maps_private*) ;

__attribute__((used)) static void *m_next(struct seq_file *m, void *v, loff_t *pos)
{
 struct proc_maps_private *priv = m->private;
 struct vm_area_struct *next;

 (*pos)++;
 next = m_next_vma(priv, v);
 if (!next)
  vma_stop(priv);
 return next;
}
