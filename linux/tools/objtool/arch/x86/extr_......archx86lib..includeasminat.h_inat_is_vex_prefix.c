
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int insn_attr_t ;


 int INAT_PFX_EVEX ;
 int INAT_PFX_MASK ;
 int INAT_PFX_VEX2 ;
 int INAT_PFX_VEX3 ;

__attribute__((used)) static inline int inat_is_vex_prefix(insn_attr_t attr)
{
 attr &= INAT_PFX_MASK;
 return attr == INAT_PFX_VEX2 || attr == INAT_PFX_VEX3 ||
        attr == INAT_PFX_EVEX;
}
