
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int oldmem_pfn_is_ram (unsigned long) ;

__attribute__((used)) static int pfn_is_ram(unsigned long pfn)
{
 int (*fn)(unsigned long pfn);

 int ret = 1;






 fn = oldmem_pfn_is_ram;
 if (fn)
  ret = fn(pfn);

 return ret;
}
