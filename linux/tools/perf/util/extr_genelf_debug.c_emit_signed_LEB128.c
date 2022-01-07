
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ubyte ;
struct buffer_ext {int dummy; } ;


 int CHAR_BIT ;
 int buffer_ext_add (struct buffer_ext*,int*,int) ;

__attribute__((used)) static void emit_signed_LEB128(struct buffer_ext *be, long data)
{
 int more = 1;
 int negative = data < 0;
 int size = sizeof(long) * CHAR_BIT;
 while (more) {
  ubyte cur = data & 0x7F;
  data >>= 7;
  if (negative)
   data |= - (1 << (size - 7));
  if ((data == 0 && !(cur & 0x40)) ||
      (data == -1l && (cur & 0x40)))
   more = 0;
  else
   cur |= 0x80;
  buffer_ext_add(be, &cur, 1);
 }
}
