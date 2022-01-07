
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int AA_MAY_CHMOD ;
 int AA_MAY_CHOWN ;
 int AA_MAY_GETATTR ;
 int AA_MAY_SETATTR ;
 int MAY_READ ;
 int MAY_WRITE ;
 int PERMS_CHRS_MASK ;

__attribute__((used)) static u32 map_mask_to_chr_mask(u32 mask)
{
 u32 m = mask & PERMS_CHRS_MASK;

 if (mask & AA_MAY_GETATTR)
  m |= MAY_READ;
 if (mask & (AA_MAY_SETATTR | AA_MAY_CHMOD | AA_MAY_CHOWN))
  m |= MAY_WRITE;

 return m;
}
