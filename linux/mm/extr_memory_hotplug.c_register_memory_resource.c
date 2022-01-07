
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct resource {int dummy; } ;


 int E2BIG ;
 int EEXIST ;
 struct resource* ERR_PTR (int ) ;
 unsigned long IORESOURCE_BUSY ;
 unsigned long IORESOURCE_SYSTEM_RAM ;
 struct resource* __request_region (int *,scalar_t__,scalar_t__,char*,unsigned long) ;
 int iomem_resource ;
 scalar_t__ max_mem_size ;
 int pr_debug (char*,scalar_t__,scalar_t__) ;

__attribute__((used)) static struct resource *register_memory_resource(u64 start, u64 size)
{
 struct resource *res;
 unsigned long flags = IORESOURCE_SYSTEM_RAM | IORESOURCE_BUSY;
 char *resource_name = "System RAM";

 if (start + size > max_mem_size)
  return ERR_PTR(-E2BIG);






 res = __request_region(&iomem_resource, start, size,
          resource_name, flags);

 if (!res) {
  pr_debug("Unable to reserve System RAM region: %016llx->%016llx\n",
    start, start + size);
  return ERR_PTR(-EEXIST);
 }
 return res;
}
