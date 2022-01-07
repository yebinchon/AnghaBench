
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct intel_pt_snapshot_ref {int ref_buf; int ref_offset; } ;
struct intel_pt_recording {int snapshot_ref_buf_size; struct intel_pt_snapshot_ref* snapshot_refs; } ;
struct auxtrace_mmap {int len; } ;


 int intel_pt_compare_ref (int ,int ,int ,int ,unsigned char*,int ) ;
 int intel_pt_copy_ref (int ,int ,int ,unsigned char*,int ) ;

__attribute__((used)) static bool intel_pt_wrapped(struct intel_pt_recording *ptr, int idx,
        struct auxtrace_mmap *mm, unsigned char *data,
        u64 head)
{
 struct intel_pt_snapshot_ref *ref = &ptr->snapshot_refs[idx];
 bool wrapped;

 wrapped = intel_pt_compare_ref(ref->ref_buf, ref->ref_offset,
           ptr->snapshot_ref_buf_size, mm->len,
           data, head);

 intel_pt_copy_ref(ref->ref_buf, ptr->snapshot_ref_buf_size, mm->len,
     data, head);

 return wrapped;
}
