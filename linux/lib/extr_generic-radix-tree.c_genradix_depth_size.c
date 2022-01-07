
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long genradix_depth_shift (unsigned int) ;

__attribute__((used)) static inline size_t genradix_depth_size(unsigned depth)
{
 return 1UL << genradix_depth_shift(depth);
}
