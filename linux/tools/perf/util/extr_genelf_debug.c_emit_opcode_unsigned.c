
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ubyte ;
struct buffer_ext {int dummy; } ;


 int buffer_ext_add (struct buffer_ext*,int *,int) ;
 int emit_unsigned_LEB128 (struct buffer_ext*,unsigned long) ;

__attribute__((used)) static void emit_opcode_unsigned(struct buffer_ext *be, ubyte opcode,
     unsigned long data)
{
 buffer_ext_add(be, &opcode, 1);
 emit_unsigned_LEB128(be, data);
}
