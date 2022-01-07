
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int anon_vma_chain; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct vm_area_struct* kmem_cache_alloc (int ,int ) ;
 int vm_area_cachep ;

struct vm_area_struct *vm_area_dup(struct vm_area_struct *orig)
{
 struct vm_area_struct *new = kmem_cache_alloc(vm_area_cachep, GFP_KERNEL);

 if (new) {
  *new = *orig;
  INIT_LIST_HEAD(&new->anon_vma_chain);
 }
 return new;
}
