
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bpf_program {scalar_t__ idx; } ;
struct TYPE_2__ {scalar_t__ text_shndx; } ;
struct bpf_object {scalar_t__ has_pseudo_calls; TYPE_1__ efile; } ;



__attribute__((used)) static bool bpf_program__is_function_storage(const struct bpf_program *prog,
          const struct bpf_object *obj)
{
 return prog->idx == obj->efile.text_shndx && obj->has_pseudo_calls;
}
