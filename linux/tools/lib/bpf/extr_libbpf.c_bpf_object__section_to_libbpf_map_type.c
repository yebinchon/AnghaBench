
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int data_shndx; int bss_shndx; int rodata_shndx; } ;
struct bpf_object {TYPE_1__ efile; } ;
typedef enum libbpf_map_type { ____Placeholder_libbpf_map_type } libbpf_map_type ;


 int LIBBPF_MAP_BSS ;
 int LIBBPF_MAP_DATA ;
 int LIBBPF_MAP_RODATA ;
 int LIBBPF_MAP_UNSPEC ;

__attribute__((used)) static enum libbpf_map_type
bpf_object__section_to_libbpf_map_type(const struct bpf_object *obj, int shndx)
{
 if (shndx == obj->efile.data_shndx)
  return LIBBPF_MAP_DATA;
 else if (shndx == obj->efile.bss_shndx)
  return LIBBPF_MAP_BSS;
 else if (shndx == obj->efile.rodata_shndx)
  return LIBBPF_MAP_RODATA;
 else
  return LIBBPF_MAP_UNSPEC;
}
