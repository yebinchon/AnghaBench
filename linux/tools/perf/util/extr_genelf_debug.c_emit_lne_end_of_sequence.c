
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_ext {int dummy; } ;


 int DW_LNE_end_sequence ;
 int emit_extended_opcode (struct buffer_ext*,int ,int *,int ) ;

__attribute__((used)) static void emit_lne_end_of_sequence(struct buffer_ext *be)
{
 emit_extended_opcode(be, DW_LNE_end_sequence, ((void*)0), 0);
}
