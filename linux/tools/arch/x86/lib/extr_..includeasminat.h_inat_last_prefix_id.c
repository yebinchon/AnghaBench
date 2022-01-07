
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int insn_attr_t ;


 int INAT_LSTPFX_MAX ;
 int INAT_PFX_MASK ;

__attribute__((used)) static inline int inat_last_prefix_id(insn_attr_t attr)
{
 if ((attr & INAT_PFX_MASK) > INAT_LSTPFX_MAX)
  return 0;
 else
  return attr & INAT_PFX_MASK;
}
