
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 int SEEK_SET ;
 int ideal_nop ;
 scalar_t__ ulseek (size_t const,int ) ;
 scalar_t__ uwrite (int ,int) ;

__attribute__((used)) static int make_nop_x86(void *map, size_t const offset)
{
 uint32_t *ptr;
 unsigned char *op;


 ptr = map + offset;
 if (*ptr != 0)
  return -1;

 op = map + offset - 1;
 if (*op != 0xe8)
  return -1;


 if (ulseek(offset - 1, SEEK_SET) < 0)
  return -1;
 if (uwrite(ideal_nop, 5) < 0)
  return -1;
 return 0;
}
