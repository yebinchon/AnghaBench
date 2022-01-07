
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elf_phdr {size_t p_offset; size_t p_filesz; scalar_t__ p_paddr; scalar_t__ p_memsz; } ;


 int pr_debug (char*) ;

__attribute__((used)) static bool elf_is_phdr_sane(const struct elf_phdr *phdr, size_t buf_len)
{

 if (phdr->p_offset + phdr->p_filesz < phdr->p_offset) {
  pr_debug("ELF segment location wraps around.\n");
  return 0;
 } else if (phdr->p_offset + phdr->p_filesz > buf_len) {
  pr_debug("ELF segment not in file.\n");
  return 0;
 } else if (phdr->p_paddr + phdr->p_memsz < phdr->p_paddr) {
  pr_debug("ELF segment address wraps around.\n");
  return 0;
 }

 return 1;
}
