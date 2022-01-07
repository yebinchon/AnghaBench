
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {struct resource* sibling; } ;


 int PageSlab (int ) ;
 struct resource* bootmem_resource_free ;
 int bootmem_resource_lock ;
 int kfree (struct resource*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int virt_to_head_page (struct resource*) ;

__attribute__((used)) static void free_resource(struct resource *res)
{
 if (!res)
  return;

 if (!PageSlab(virt_to_head_page(res))) {
  spin_lock(&bootmem_resource_lock);
  res->sibling = bootmem_resource_free;
  bootmem_resource_free = res;
  spin_unlock(&bootmem_resource_lock);
 } else {
  kfree(res);
 }
}
