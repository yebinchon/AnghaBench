
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int insn_byte_t ;
typedef int insn_attr_t ;


 int inat_get_opcode_attribute (int ) ;
 int inat_last_prefix_id (int ) ;

int inat_get_last_prefix_id(insn_byte_t last_pfx)
{
 insn_attr_t lpfx_attr;

 lpfx_attr = inat_get_opcode_attribute(last_pfx);
 return inat_last_prefix_id(lpfx_attr);
}
