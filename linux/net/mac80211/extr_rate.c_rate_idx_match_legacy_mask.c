
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int s8 ;



__attribute__((used)) static bool rate_idx_match_legacy_mask(s8 *rate_idx, int n_bitrates, u32 mask)
{
 int j;


 for (j = *rate_idx; j >= 0; j--) {
  if (mask & (1 << j)) {

   *rate_idx = j;
   return 1;
  }
 }


 for (j = *rate_idx + 1; j < n_bitrates; j++) {
  if (mask & (1 << j)) {

   *rate_idx = j;
   return 1;
  }
 }
 return 0;
}
