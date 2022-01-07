
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_ext {int dummy; } ;


 int DW_LNE_set_address ;
 int emit_extended_opcode (struct buffer_ext*,int ,void**,int) ;

__attribute__((used)) static void emit_lne_set_address(struct buffer_ext *be,
     void *address)
{
 emit_extended_opcode(be, DW_LNE_set_address, &address, sizeof(unsigned long));
}
