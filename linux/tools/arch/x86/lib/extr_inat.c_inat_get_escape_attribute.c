
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t insn_byte_t ;
typedef int const insn_attr_t ;


 int inat_escape_id (int const) ;
 int const*** inat_escape_tables ;
 scalar_t__ inat_has_variant (int const) ;

insn_attr_t inat_get_escape_attribute(insn_byte_t opcode, int lpfx_id,
          insn_attr_t esc_attr)
{
 const insn_attr_t *table;
 int n;

 n = inat_escape_id(esc_attr);

 table = inat_escape_tables[n][0];
 if (!table)
  return 0;
 if (inat_has_variant(table[opcode]) && lpfx_id) {
  table = inat_escape_tables[n][lpfx_id];
  if (!table)
   return 0;
 }
 return table[opcode];
}
