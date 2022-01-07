
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_table_info {unsigned int size; } ;


 int GFP_KERNEL_ACCOUNT ;
 size_t XT_MAX_TABLE_SIZE ;
 struct xt_table_info* kvmalloc (size_t,int ) ;
 int memset (struct xt_table_info*,int ,int) ;

struct xt_table_info *xt_alloc_table_info(unsigned int size)
{
 struct xt_table_info *info = ((void*)0);
 size_t sz = sizeof(*info) + size;

 if (sz < sizeof(*info) || sz >= XT_MAX_TABLE_SIZE)
  return ((void*)0);

 info = kvmalloc(sz, GFP_KERNEL_ACCOUNT);
 if (!info)
  return ((void*)0);

 memset(info, 0, sizeof(*info));
 info->size = size;
 return info;
}
