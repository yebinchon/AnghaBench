
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bpf_object {TYPE_2__* btf_ext; } ;
struct TYPE_3__ {scalar_t__ len; } ;
struct TYPE_4__ {TYPE_1__ offset_reloc_info; } ;


 int bpf_core_reloc_offsets (struct bpf_object*,char const*) ;

__attribute__((used)) static int
bpf_object__relocate_core(struct bpf_object *obj, const char *targ_btf_path)
{
 int err = 0;

 if (obj->btf_ext->offset_reloc_info.len)
  err = bpf_core_reloc_offsets(obj, targ_btf_path);

 return err;
}
