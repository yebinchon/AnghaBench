
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 unsigned char* adj_for_padding (unsigned char*,unsigned char*,size_t) ;
 unsigned char* intel_pt_last_psb (unsigned char*,size_t) ;
 scalar_t__ intel_pt_next_tsc (unsigned char*,size_t,int *,size_t*) ;
 int intel_pt_step_psb (unsigned char**,size_t*) ;
 int intel_pt_tsc_cmp (int ,int ) ;

__attribute__((used)) static unsigned char *intel_pt_find_overlap_tsc(unsigned char *buf_a,
      size_t len_a,
      unsigned char *buf_b,
      size_t len_b, bool *consecutive)
{
 uint64_t tsc_a, tsc_b;
 unsigned char *p;
 size_t len, rem_a, rem_b;

 p = intel_pt_last_psb(buf_a, len_a);
 if (!p)
  return buf_b;

 len = len_a - (p - buf_a);
 if (!intel_pt_next_tsc(p, len, &tsc_a, &rem_a)) {

  len_a -= len;
  p = intel_pt_last_psb(buf_a, len_a);
  if (!p)
   return buf_b;
  len = len_a - (p - buf_a);
  if (!intel_pt_next_tsc(p, len, &tsc_a, &rem_a))
   return buf_b;
 }

 while (1) {

  if (intel_pt_next_tsc(buf_b, len_b, &tsc_b, &rem_b)) {
   int cmp = intel_pt_tsc_cmp(tsc_a, tsc_b);


   if (!cmp && rem_b >= rem_a) {
    unsigned char *start;

    *consecutive = 1;
    start = buf_b + len_b - (rem_b - rem_a);
    return adj_for_padding(start, buf_a, len_a);
   }
   if (cmp < 0)
    return buf_b;
  }

  if (!intel_pt_step_psb(&buf_b, &len_b))
   return buf_b + len_b;
 }
}
