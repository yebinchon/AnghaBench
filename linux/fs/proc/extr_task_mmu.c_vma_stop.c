
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_maps_private {struct mm_struct* mm; } ;
struct mm_struct {int mmap_sem; } ;


 int mmput (struct mm_struct*) ;
 int release_task_mempolicy (struct proc_maps_private*) ;
 int up_read (int *) ;

__attribute__((used)) static void vma_stop(struct proc_maps_private *priv)
{
 struct mm_struct *mm = priv->mm;

 release_task_mempolicy(priv);
 up_read(&mm->mmap_sem);
 mmput(mm);
}
