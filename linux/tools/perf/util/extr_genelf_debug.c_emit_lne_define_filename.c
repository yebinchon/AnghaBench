
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_ext {int dummy; } ;


 int DW_LNE_define_file ;
 int buffer_ext_add (struct buffer_ext*,void*,int) ;
 int emit_opcode (struct buffer_ext*,int ) ;
 int emit_string (struct buffer_ext*,char const*) ;
 int emit_unsigned_LEB128 (struct buffer_ext*,scalar_t__) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static void emit_lne_define_filename(struct buffer_ext *be,
         const char *filename)
{
 buffer_ext_add(be, (void *)"", 1);


 emit_unsigned_LEB128(be, strlen(filename) + 5);
 emit_opcode(be, DW_LNE_define_file);
 emit_string(be, filename);

        emit_unsigned_LEB128(be, 0);

        emit_unsigned_LEB128(be, 0);

        emit_unsigned_LEB128(be, 0);
}
