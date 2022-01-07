
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int LVL_GRAN (unsigned int) ;
 unsigned int LVL_MASK ;
 int LVL_OFFS (unsigned int) ;
 unsigned int LVL_SHIFT (unsigned int) ;

__attribute__((used)) static inline unsigned calc_index(unsigned expires, unsigned lvl)
{
 expires = (expires + LVL_GRAN(lvl)) >> LVL_SHIFT(lvl);
 return LVL_OFFS(lvl) + (expires & LVL_MASK);
}
