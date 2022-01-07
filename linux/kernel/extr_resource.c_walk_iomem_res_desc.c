
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int __walk_iomem_res_desc (int ,int ,unsigned long,unsigned long,int,void*,int (*) (struct resource*,void*)) ;

int walk_iomem_res_desc(unsigned long desc, unsigned long flags, u64 start,
  u64 end, void *arg, int (*func)(struct resource *, void *))
{
 return __walk_iomem_res_desc(start, end, flags, desc, 0, arg, func);
}
