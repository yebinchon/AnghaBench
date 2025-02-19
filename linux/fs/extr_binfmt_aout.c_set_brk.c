
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long PAGE_ALIGN (unsigned long) ;
 int vm_brk (unsigned long,unsigned long) ;

__attribute__((used)) static int set_brk(unsigned long start, unsigned long end)
{
 start = PAGE_ALIGN(start);
 end = PAGE_ALIGN(end);
 if (end > start)
  return vm_brk(start, end - start);
 return 0;
}
