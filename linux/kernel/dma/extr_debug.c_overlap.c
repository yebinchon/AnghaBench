
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline bool overlap(void *addr, unsigned long len, void *start, void *end)
{
 unsigned long a1 = (unsigned long)addr;
 unsigned long b1 = a1 + len;
 unsigned long a2 = (unsigned long)start;
 unsigned long b2 = (unsigned long)end;

 return !(b1 <= a2 || a1 >= b2);
}
