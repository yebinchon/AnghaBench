
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int SEL_CLASS_INO_OFFSET ;
 int SEL_VEC_MAX ;

__attribute__((used)) static inline unsigned long sel_perm_to_ino(u16 class, u32 perm)
{
 return (class * (SEL_VEC_MAX + 1) + perm) | SEL_CLASS_INO_OFFSET;
}
