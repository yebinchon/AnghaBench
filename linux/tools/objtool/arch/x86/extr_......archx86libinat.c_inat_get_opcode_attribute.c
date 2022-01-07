
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t insn_byte_t ;
typedef int insn_attr_t ;


 int * inat_primary_table ;

insn_attr_t inat_get_opcode_attribute(insn_byte_t opcode)
{
 return inat_primary_table[opcode];
}
