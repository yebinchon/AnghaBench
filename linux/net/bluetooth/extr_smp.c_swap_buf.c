
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static inline void swap_buf(const u8 *src, u8 *dst, size_t len)
{
 size_t i;

 for (i = 0; i < len; i++)
  dst[len - 1 - i] = src[i];
}
