
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int intel_pt_compare_buffers (void*,size_t,void*,size_t,size_t) ;

__attribute__((used)) static bool intel_pt_compare_ref(void *ref_buf, size_t ref_offset,
     size_t ref_size, size_t buf_size,
     void *data, size_t head)
{
 size_t ref_end = ref_offset + ref_size;

 if (ref_end > buf_size) {
  if (head > ref_offset || head < ref_end - buf_size)
   return 1;
 } else if (head > ref_offset && head < ref_end) {
  return 1;
 }

 return intel_pt_compare_buffers(ref_buf, ref_size, data, ref_offset,
     buf_size);
}
