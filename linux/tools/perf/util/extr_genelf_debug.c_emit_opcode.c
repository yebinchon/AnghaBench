
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ubyte ;
struct buffer_ext {int dummy; } ;


 int buffer_ext_add (struct buffer_ext*,int *,int) ;

__attribute__((used)) static void emit_opcode(struct buffer_ext *be, ubyte opcode)
{
 buffer_ext_add(be, &opcode, 1);
}
