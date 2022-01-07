
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char* adj_for_padding (unsigned char*,unsigned char*,size_t) ;
 unsigned char* intel_pt_find_overlap_tsc (unsigned char*,size_t,unsigned char*,size_t,int*) ;
 int intel_pt_next_psb (unsigned char**,size_t*) ;
 int intel_pt_step_psb (unsigned char**,size_t*) ;
 unsigned char* memmem (unsigned char*,size_t,unsigned char*,size_t) ;

unsigned char *intel_pt_find_overlap(unsigned char *buf_a, size_t len_a,
         unsigned char *buf_b, size_t len_b,
         bool have_tsc, bool *consecutive)
{
 unsigned char *found;


 if (!intel_pt_next_psb(&buf_b, &len_b))
  return buf_b + len_b;

 if (!intel_pt_next_psb(&buf_a, &len_a))
  return buf_b;

 if (have_tsc) {
  found = intel_pt_find_overlap_tsc(buf_a, len_a, buf_b, len_b,
        consecutive);
  if (found)
   return found;
 }





 while (len_b < len_a) {
  if (!intel_pt_step_psb(&buf_a, &len_a))
   return buf_b;
 }


 while (1) {

  found = memmem(buf_a, len_a, buf_b, len_a);
  if (found) {
   *consecutive = 1;
   return adj_for_padding(buf_b + len_a, buf_a, len_a);
  }


  if (!intel_pt_step_psb(&buf_a, &len_a))
   return buf_b;
 }
}
