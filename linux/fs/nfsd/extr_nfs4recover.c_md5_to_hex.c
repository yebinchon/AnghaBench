
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void
md5_to_hex(char *out, char *md5)
{
 int i;

 for (i=0; i<16; i++) {
  unsigned char c = md5[i];

  *out++ = '0' + ((c&0xf0)>>4) + (c>=0xa0)*('a'-'9'-1);
  *out++ = '0' + (c&0x0f) + ((c&0x0f)>=0x0a)*('a'-'9'-1);
 }
 *out = '\0';
}
