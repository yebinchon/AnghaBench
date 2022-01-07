
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;



__attribute__((used)) static void ocfs2_calc_extent_defrag_len(u32 *alloc_size, u32 *len_defraged,
      u32 threshold, int *skip)
{
 if ((*alloc_size + *len_defraged) < threshold) {



  *len_defraged += *alloc_size;
 } else if (*len_defraged == 0) {



  *skip = 1;
 } else {
  *alloc_size = threshold - *len_defraged;
  *len_defraged = 0;
 }
}
