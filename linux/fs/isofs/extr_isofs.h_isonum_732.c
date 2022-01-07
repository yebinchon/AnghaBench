
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 unsigned int get_unaligned_be32 (int *) ;

__attribute__((used)) static inline unsigned int isonum_732(u8 *p)
{
 return get_unaligned_be32(p);
}
