
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;


 int BITS_PER_LONG ;

__attribute__((used)) static inline u32 addr_fold(void *addr)
{
 unsigned long a = (unsigned long)addr;

 return (a & 0xFFFFFFFF) ^ (BITS_PER_LONG > 32 ? a >> 32 : 0);
}
