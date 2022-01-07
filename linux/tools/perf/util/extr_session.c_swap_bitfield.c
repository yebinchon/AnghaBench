
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int revbyte (int ) ;

__attribute__((used)) static void swap_bitfield(u8 *p, unsigned len)
{
 unsigned i;

 for (i = 0; i < len; i++) {
  *p = revbyte(*p);
  p++;
 }
}
