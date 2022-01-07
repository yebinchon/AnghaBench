
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SEEK_SET ;
 int bl_mcount_arm ;
 int ideal_nop ;
 int ideal_nop2_thumb ;
 int ideal_nop4_arm ;
 scalar_t__ memcmp (char*,int ,int) ;
 int push_arm ;
 int push_bl_mcount_thumb ;
 scalar_t__ ulseek (size_t,int ) ;
 scalar_t__ uwrite (int ,int) ;

__attribute__((used)) static int make_nop_arm(void *map, size_t const offset)
{
 char *ptr;
 int cnt = 1;
 int nop_size;
 size_t off = offset;

 ptr = map + offset;
 if (memcmp(ptr, bl_mcount_arm, 4) == 0) {
  if (memcmp(ptr - 4, push_arm, 4) == 0) {
   off -= 4;
   cnt = 2;
  }
  ideal_nop = ideal_nop4_arm;
  nop_size = 4;
 } else if (memcmp(ptr - 2, push_bl_mcount_thumb, 6) == 0) {
  cnt = 3;
  nop_size = 2;
  off -= 2;
  ideal_nop = ideal_nop2_thumb;
 } else
  return -1;


 if (ulseek(off, SEEK_SET) < 0)
  return -1;

 do {
  if (uwrite(ideal_nop, nop_size) < 0)
   return -1;
 } while (--cnt > 0);

 return 0;
}
