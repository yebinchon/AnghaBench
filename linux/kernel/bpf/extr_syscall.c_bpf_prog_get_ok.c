
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_prog {int type; int aux; } ;
typedef enum bpf_prog_type { ____Placeholder_bpf_prog_type } bpf_prog_type ;


 scalar_t__ bpf_prog_is_dev_bound (int ) ;

bool bpf_prog_get_ok(struct bpf_prog *prog,
       enum bpf_prog_type *attach_type, bool attach_drv)
{

 if (!attach_type)
  return 1;

 if (prog->type != *attach_type)
  return 0;
 if (bpf_prog_is_dev_bound(prog->aux) && !attach_drv)
  return 0;

 return 1;
}
