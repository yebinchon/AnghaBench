
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GFP_KERNEL ;
 char* kmalloc (int,int ) ;
 int sprintf (char*,char*,int ) ;

__attribute__((used)) static char *
bin_to_hex_dup(const unsigned char *src, int srclen)
{
 int i;
 char *buf, *hex;


 buf = kmalloc((srclen * 2) + 1, GFP_KERNEL);
 if (!buf)
  return buf;

 hex = buf;
 for (i = 0; i < srclen; i++) {
  sprintf(hex, "%2.2x", *src++);
  hex += 2;
 }
 return buf;
}
