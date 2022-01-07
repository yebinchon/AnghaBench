
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int text_shndx; } ;
struct bpf_object {TYPE_1__ efile; } ;


 scalar_t__ bpf_object__shndx_is_data (struct bpf_object const*,int) ;
 scalar_t__ bpf_object__shndx_is_maps (struct bpf_object const*,int) ;

__attribute__((used)) static bool bpf_object__relo_in_known_section(const struct bpf_object *obj,
           int shndx)
{
 return shndx == obj->efile.text_shndx ||
        bpf_object__shndx_is_maps(obj, shndx) ||
        bpf_object__shndx_is_data(obj, shndx);
}
