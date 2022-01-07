
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __le32 ;


 scalar_t__ tstbits (int *,unsigned int,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static unsigned find_run(__le32 *bmp, unsigned *idx)
{
 unsigned len;
 while (tstbits(bmp, *idx, 1)) {
  (*idx)++;
  if (unlikely(*idx >= 0x4000))
   return 0;
 }
 len = 1;
 while (!tstbits(bmp, *idx + len, 1))
  len++;
 return len;
}
