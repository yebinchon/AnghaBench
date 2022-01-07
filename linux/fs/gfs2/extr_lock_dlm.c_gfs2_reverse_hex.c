
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int * hex_asc ;

__attribute__((used)) static void gfs2_reverse_hex(char *c, u64 value)
{
 *c = '0';
 while (value) {
  *c-- = hex_asc[value & 0x0f];
  value >>= 4;
 }
}
