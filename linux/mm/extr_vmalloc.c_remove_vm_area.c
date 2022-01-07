
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmap_area {struct vm_struct* vm; } ;
struct vm_struct {int dummy; } ;


 struct vmap_area* __find_vmap_area (unsigned long) ;
 int free_unmap_vmap_area (struct vmap_area*) ;
 int kasan_free_shadow (struct vm_struct*) ;
 int might_sleep () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int vmap_area_lock ;

struct vm_struct *remove_vm_area(const void *addr)
{
 struct vmap_area *va;

 might_sleep();

 spin_lock(&vmap_area_lock);
 va = __find_vmap_area((unsigned long)addr);
 if (va && va->vm) {
  struct vm_struct *vm = va->vm;

  va->vm = ((void*)0);
  spin_unlock(&vmap_area_lock);

  kasan_free_shadow(vm);
  free_unmap_vmap_area(va);

  return vm;
 }

 spin_unlock(&vmap_area_lock);
 return ((void*)0);
}
