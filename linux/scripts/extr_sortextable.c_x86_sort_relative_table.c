
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int compare_relative_table ;
 int qsort (char*,int,int,int ) ;
 scalar_t__ r (int *) ;
 int w (scalar_t__,int *) ;

__attribute__((used)) static void x86_sort_relative_table(char *extab_image, int image_size)
{
 int i;

 i = 0;
 while (i < image_size) {
  uint32_t *loc = (uint32_t *)(extab_image + i);

  w(r(loc) + i, loc);
  w(r(loc + 1) + i + 4, loc + 1);
  w(r(loc + 2) + i + 8, loc + 2);

  i += sizeof(uint32_t) * 3;
 }

 qsort(extab_image, image_size / 12, 12, compare_relative_table);

 i = 0;
 while (i < image_size) {
  uint32_t *loc = (uint32_t *)(extab_image + i);

  w(r(loc) - i, loc);
  w(r(loc + 1) - (i + 4), loc + 1);
  w(r(loc + 2) - (i + 8), loc + 2);

  i += sizeof(uint32_t) * 3;
 }
}
