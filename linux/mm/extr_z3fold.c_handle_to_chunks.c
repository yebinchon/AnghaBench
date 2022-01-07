
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long BUDDY_SHIFT ;
 unsigned long PAGE_MASK ;

__attribute__((used)) static unsigned short handle_to_chunks(unsigned long handle)
{
 unsigned long addr = *(unsigned long *)handle;

 return (addr & ~PAGE_MASK) >> BUDDY_SHIFT;
}
