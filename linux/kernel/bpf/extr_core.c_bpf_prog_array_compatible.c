
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_prog {scalar_t__ type; scalar_t__ jited; scalar_t__ kprobe_override; } ;
struct bpf_array {scalar_t__ owner_prog_type; scalar_t__ owner_jited; } ;



bool bpf_prog_array_compatible(struct bpf_array *array,
          const struct bpf_prog *fp)
{
 if (fp->kprobe_override)
  return 0;

 if (!array->owner_prog_type) {



  array->owner_prog_type = fp->type;
  array->owner_jited = fp->jited;

  return 1;
 }

 return array->owner_prog_type == fp->type &&
        array->owner_jited == fp->jited;
}
