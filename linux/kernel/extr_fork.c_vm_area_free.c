
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;


 int kmem_cache_free (int ,struct vm_area_struct*) ;
 int vm_area_cachep ;

void vm_area_free(struct vm_area_struct *vma)
{
 kmem_cache_free(vm_area_cachep, vma);
}
