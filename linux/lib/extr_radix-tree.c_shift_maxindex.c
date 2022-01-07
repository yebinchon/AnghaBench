
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int RADIX_TREE_MAP_SIZE ;

__attribute__((used)) static inline unsigned long shift_maxindex(unsigned int shift)
{
 return (RADIX_TREE_MAP_SIZE << shift) - 1;
}
