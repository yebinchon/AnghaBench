
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int SM_MASK ;
 int SM_SHIFT ;

__attribute__((used)) static inline u64
seg_x2y(u64 x, u64 sm)
{
 u64 y;






 y = (x >> SM_SHIFT) * sm + (((x & SM_MASK) * sm) >> SM_SHIFT);
 return y;
}
