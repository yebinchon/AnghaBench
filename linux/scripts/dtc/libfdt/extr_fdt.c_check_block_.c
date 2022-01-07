
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 int check_off_ (scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static int check_block_(uint32_t hdrsize, uint32_t totalsize,
   uint32_t base, uint32_t size)
{
 if (!check_off_(hdrsize, totalsize, base))
  return 0;
 if ((base + size) < base)
  return 0;
 if (!check_off_(hdrsize, totalsize, base + size))
  return 0;
 return 1;
}
