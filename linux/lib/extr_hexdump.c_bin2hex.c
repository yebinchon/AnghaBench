
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* hex_byte_pack (char*,int ) ;

char *bin2hex(char *dst, const void *src, size_t count)
{
 const unsigned char *_src = src;

 while (count--)
  dst = hex_byte_pack(dst, *_src++);
 return dst;
}
