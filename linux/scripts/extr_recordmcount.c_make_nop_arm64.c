
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int SEEK_SET ;
 int ideal_nop ;
 scalar_t__ ulseek (size_t const,int ) ;
 scalar_t__ uwrite (int ,int) ;

__attribute__((used)) static int make_nop_arm64(void *map, size_t const offset)
{
 uint32_t *ptr;

 ptr = map + offset;

 if (*ptr != 0x94000000)
  return -1;


 if (ulseek(offset, SEEK_SET) < 0)
  return -1;
 if (uwrite(ideal_nop, 4) < 0)
  return -1;
 return 0;
}
