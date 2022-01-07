
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;



__attribute__((used)) static void memcpy_32to16(void *dest, const void *src, size_t n)
{
 unsigned int i = 0;
 u16 *d = (u16 *)dest, *s = (u16 *)src;

 s++;
 for (i = n; i > 0; i--) {
  *d++ = *s++;
  s++;
 }
}
