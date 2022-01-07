
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct bpf_prog_array {int dummy; } ;


 int ENOSPC ;
 scalar_t__ bpf_prog_array_copy_core (struct bpf_prog_array*,scalar_t__*,scalar_t__) ;
 scalar_t__ bpf_prog_array_length (struct bpf_prog_array*) ;

int bpf_prog_array_copy_info(struct bpf_prog_array *array,
        u32 *prog_ids, u32 request_cnt,
        u32 *prog_cnt)
{
 u32 cnt = 0;

 if (array)
  cnt = bpf_prog_array_length(array);

 *prog_cnt = cnt;


 if (!request_cnt || !cnt)
  return 0;


 return bpf_prog_array_copy_core(array, prog_ids, request_cnt) ? -ENOSPC
             : 0;
}
