
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kcore_copy_info {int dummy; } ;
typedef int Elf ;


 scalar_t__ elf_read_maps (int *,int,int ,struct kcore_copy_info*) ;
 int kcore_copy__read_map ;

__attribute__((used)) static int kcore_copy__read_maps(struct kcore_copy_info *kci, Elf *elf)
{
 if (elf_read_maps(elf, 1, kcore_copy__read_map, kci) < 0)
  return -1;

 return 0;
}
