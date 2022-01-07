
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int insn_attr_t ;


 int INAT_LGCPFX_MAX ;
 int INAT_PFX_MASK ;

__attribute__((used)) static inline int inat_is_legacy_prefix(insn_attr_t attr)
{
 attr &= INAT_PFX_MASK;
 return attr && attr <= INAT_LGCPFX_MAX;
}
