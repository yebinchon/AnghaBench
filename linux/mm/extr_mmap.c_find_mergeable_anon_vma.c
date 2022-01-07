
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {struct vm_area_struct* vm_prev; struct vm_area_struct* vm_next; } ;
struct anon_vma {int dummy; } ;


 struct anon_vma* reusable_anon_vma (struct vm_area_struct*,struct vm_area_struct*,struct vm_area_struct*) ;

struct anon_vma *find_mergeable_anon_vma(struct vm_area_struct *vma)
{
 struct anon_vma *anon_vma;
 struct vm_area_struct *near;

 near = vma->vm_next;
 if (!near)
  goto try_prev;

 anon_vma = reusable_anon_vma(near, vma, near);
 if (anon_vma)
  return anon_vma;
try_prev:
 near = vma->vm_prev;
 if (!near)
  goto none;

 anon_vma = reusable_anon_vma(near, near, vma);
 if (anon_vma)
  return anon_vma;
none:
 return ((void*)0);
}
