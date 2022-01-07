
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_ext {int dummy; } ;


 int DW_LNS_set_file ;
 int emit_opcode_unsigned (struct buffer_ext*,int ,unsigned long) ;

__attribute__((used)) static void emit_set_file(struct buffer_ext *be, unsigned long idx)
{
 emit_opcode_unsigned(be, DW_LNS_set_file, idx);
}
