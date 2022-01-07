
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int compare_relative_table ;
 int qsort (char*,int,int,int ) ;
 scalar_t__ r (int *) ;
 int w (scalar_t__,int *) ;

__attribute__((used)) static void sort_relative_table(char *extab_image, int image_size)
{
 int i;





 i = 0;
 while (i < image_size) {
  uint32_t *loc = (uint32_t *)(extab_image + i);
  w(r(loc) + i, loc);
  i += 4;
 }

 qsort(extab_image, image_size / 8, 8, compare_relative_table);


 i = 0;
 while (i < image_size) {
  uint32_t *loc = (uint32_t *)(extab_image + i);
  w(r(loc) - i, loc);
  i += 4;
 }
}
