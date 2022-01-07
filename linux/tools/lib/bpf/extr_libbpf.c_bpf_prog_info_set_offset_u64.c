
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_prog_info {int dummy; } ;
typedef int __u64 ;



__attribute__((used)) static void bpf_prog_info_set_offset_u64(struct bpf_prog_info *info, int offset,
      __u64 val)
{
 __u64 *array = (__u64 *)info;

 if (offset >= 0)
  array[offset / sizeof(__u64)] = val;
}
