
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_ext {int dummy; } ;


 int DW_LNS_advance_line ;
 int emit_opcode_signed (struct buffer_ext*,int ,long) ;

__attribute__((used)) static void emit_advance_lineno(struct buffer_ext *be, long delta_lineno)
{
 emit_opcode_signed(be, DW_LNS_advance_line, delta_lineno);
}
