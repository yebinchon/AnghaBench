
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int f2fs_test_bit(unsigned int nr, char *addr)
{
 int mask;

 addr += (nr >> 3);
 mask = 1 << (7 - (nr & 0x07));
 return mask & *addr;
}
