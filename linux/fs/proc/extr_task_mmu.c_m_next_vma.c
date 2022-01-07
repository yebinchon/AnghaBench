
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {scalar_t__ vm_next; } ;
struct proc_maps_private {struct vm_area_struct* tail_vma; } ;



__attribute__((used)) static struct vm_area_struct *
m_next_vma(struct proc_maps_private *priv, struct vm_area_struct *vma)
{
 if (vma == priv->tail_vma)
  return ((void*)0);
 return vma->vm_next ?: priv->tail_vma;
}
