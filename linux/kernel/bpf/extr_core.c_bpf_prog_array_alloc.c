
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct bpf_prog_array_item {int dummy; } ;
struct bpf_prog_array {int dummy; } ;
typedef int gfp_t ;
struct TYPE_2__ {struct bpf_prog_array hdr; } ;


 TYPE_1__ empty_prog_array ;
 struct bpf_prog_array* kzalloc (int,int ) ;

struct bpf_prog_array *bpf_prog_array_alloc(u32 prog_cnt, gfp_t flags)
{
 if (prog_cnt)
  return kzalloc(sizeof(struct bpf_prog_array) +
          sizeof(struct bpf_prog_array_item) *
          (prog_cnt + 1),
          flags);

 return &empty_prog_array.hdr;
}
