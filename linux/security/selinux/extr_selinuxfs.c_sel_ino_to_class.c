
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u16 ;


 unsigned long SEL_INO_MASK ;
 int SEL_VEC_MAX ;

__attribute__((used)) static inline u16 sel_ino_to_class(unsigned long ino)
{
 return (ino & SEL_INO_MASK) / (SEL_VEC_MAX + 1);
}
