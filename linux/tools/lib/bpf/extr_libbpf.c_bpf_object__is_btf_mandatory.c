
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ btf_maps_shndx; } ;
struct bpf_object {TYPE_1__ efile; } ;



__attribute__((used)) static bool bpf_object__is_btf_mandatory(const struct bpf_object *obj)
{
 return obj->efile.btf_maps_shndx >= 0;
}
