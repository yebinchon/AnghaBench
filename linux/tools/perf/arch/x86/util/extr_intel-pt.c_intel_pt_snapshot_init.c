
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_pt_recording {int snapshot_init_done; int snapshot_ref_buf_size; } ;


 int intel_pt_snapshot_ref_buf_size (struct intel_pt_recording*,size_t) ;

__attribute__((used)) static int intel_pt_snapshot_init(struct intel_pt_recording *ptr,
      size_t snapshot_buf_size)
{
 if (ptr->snapshot_init_done)
  return 0;

 ptr->snapshot_init_done = 1;

 ptr->snapshot_ref_buf_size = intel_pt_snapshot_ref_buf_size(ptr,
       snapshot_buf_size);

 return 0;
}
