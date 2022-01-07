
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int GENRADIX_ARY_SHIFT ;
 int PAGE_SHIFT ;

__attribute__((used)) static inline int genradix_depth_shift(unsigned depth)
{
 return PAGE_SHIFT + GENRADIX_ARY_SHIFT * depth;
}
