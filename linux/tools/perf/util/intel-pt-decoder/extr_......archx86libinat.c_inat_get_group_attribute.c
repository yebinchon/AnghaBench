
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int insn_byte_t ;
typedef int const insn_attr_t ;


 size_t X86_MODRM_REG (int ) ;
 int const inat_group_common_attribute (int const) ;
 int inat_group_id (int const) ;
 int*** inat_group_tables ;
 scalar_t__ inat_has_variant (int const) ;

insn_attr_t inat_get_group_attribute(insn_byte_t modrm, int lpfx_id,
         insn_attr_t grp_attr)
{
 const insn_attr_t *table;
 int n;

 n = inat_group_id(grp_attr);

 table = inat_group_tables[n][0];
 if (!table)
  return inat_group_common_attribute(grp_attr);
 if (inat_has_variant(table[X86_MODRM_REG(modrm)]) && lpfx_id) {
  table = inat_group_tables[n][lpfx_id];
  if (!table)
   return inat_group_common_attribute(grp_attr);
 }
 return table[X86_MODRM_REG(modrm)] |
        inat_group_common_attribute(grp_attr);
}
