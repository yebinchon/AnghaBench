
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_ext {int dummy; } ;


 int DW_AT_stmt_list ;
 int DW_CHILDREN_yes ;
 int DW_FORM_data4 ;
 int DW_TAG_compile_unit ;
 int emit_unsigned_LEB128 (struct buffer_ext*,int) ;

__attribute__((used)) static void
add_debug_abbrev(struct buffer_ext *be)
{
        emit_unsigned_LEB128(be, 1);
        emit_unsigned_LEB128(be, DW_TAG_compile_unit);
        emit_unsigned_LEB128(be, DW_CHILDREN_yes);
        emit_unsigned_LEB128(be, DW_AT_stmt_list);
        emit_unsigned_LEB128(be, DW_FORM_data4);
        emit_unsigned_LEB128(be, 0);
        emit_unsigned_LEB128(be, 0);
        emit_unsigned_LEB128(be, 0);
}
