
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bpf_prog {int dummy; } ;
typedef enum bpf_prog_type { ____Placeholder_bpf_prog_type } bpf_prog_type ;


 struct bpf_prog* __bpf_prog_get (int ,int*,int) ;

struct bpf_prog *bpf_prog_get_type_dev(u32 ufd, enum bpf_prog_type type,
           bool attach_drv)
{
 return __bpf_prog_get(ufd, &type, attach_drv);
}
