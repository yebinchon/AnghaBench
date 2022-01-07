
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ _end ;
 scalar_t__ _stext ;
 scalar_t__ is_module_address (unsigned long) ;

__attribute__((used)) static inline bool kernel_or_module_addr(const void *addr)
{
 if (addr >= (void *)_stext && addr < (void *)_end)
  return 1;
 if (is_module_address((unsigned long)addr))
  return 1;
 return 0;
}
