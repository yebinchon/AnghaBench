
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct kcore {int elf; } ;
typedef int off_t ;
struct TYPE_3__ {int p_flags; int p_align; int p_memsz; int p_filesz; int p_paddr; int p_vaddr; int p_offset; int p_type; } ;
typedef TYPE_1__ GElf_Phdr ;


 int PF_R ;
 int PF_W ;
 int PF_X ;
 int PT_LOAD ;
 int gelf_update_phdr (int ,int,TYPE_1__*) ;
 int page_size ;

__attribute__((used)) static int kcore__add_phdr(struct kcore *kcore, int idx, off_t offset,
      u64 addr, u64 len)
{
 GElf_Phdr phdr = {
  .p_type = PT_LOAD,
  .p_flags = PF_R | PF_W | PF_X,
  .p_offset = offset,
  .p_vaddr = addr,
  .p_paddr = 0,
  .p_filesz = len,
  .p_memsz = len,
  .p_align = page_size,
 };

 if (!gelf_update_phdr(kcore->elf, idx, &phdr))
  return -1;

 return 0;
}
