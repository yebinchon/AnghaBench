
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {struct resource* sibling; } ;
typedef int gfp_t ;


 struct resource* bootmem_resource_free ;
 int bootmem_resource_lock ;
 struct resource* kzalloc (int,int ) ;
 int memset (struct resource*,int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static struct resource *alloc_resource(gfp_t flags)
{
 struct resource *res = ((void*)0);

 spin_lock(&bootmem_resource_lock);
 if (bootmem_resource_free) {
  res = bootmem_resource_free;
  bootmem_resource_free = res->sibling;
 }
 spin_unlock(&bootmem_resource_lock);

 if (res)
  memset(res, 0, sizeof(struct resource));
 else
  res = kzalloc(sizeof(struct resource), flags);

 return res;
}
