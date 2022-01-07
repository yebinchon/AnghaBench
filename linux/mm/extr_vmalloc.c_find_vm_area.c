
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmap_area {struct vm_struct* vm; } ;
struct vm_struct {int dummy; } ;


 struct vmap_area* find_vmap_area (unsigned long) ;

struct vm_struct *find_vm_area(const void *addr)
{
 struct vmap_area *va;

 va = find_vmap_area((unsigned long)addr);
 if (!va)
  return ((void*)0);

 return va->vm;
}
