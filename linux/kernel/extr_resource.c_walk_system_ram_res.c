
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 unsigned long IORESOURCE_BUSY ;
 unsigned long IORESOURCE_SYSTEM_RAM ;
 int IORES_DESC_NONE ;
 int __walk_iomem_res_desc (int ,int ,unsigned long,int ,int,void*,int (*) (struct resource*,void*)) ;

int walk_system_ram_res(u64 start, u64 end, void *arg,
   int (*func)(struct resource *, void *))
{
 unsigned long flags = IORESOURCE_SYSTEM_RAM | IORESOURCE_BUSY;

 return __walk_iomem_res_desc(start, end, flags, IORES_DESC_NONE, 1,
         arg, func);
}
