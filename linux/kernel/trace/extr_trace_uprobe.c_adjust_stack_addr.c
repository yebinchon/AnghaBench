
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned long adjust_stack_addr(unsigned long addr, unsigned int n)
{
 return addr + (n * sizeof(long));
}
