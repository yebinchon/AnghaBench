
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int bmap_would_wrap(unsigned bmap_nr)
{
 return bmap_nr > ((1LL << 16) - 1);
}
