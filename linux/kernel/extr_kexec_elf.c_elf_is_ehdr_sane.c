
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elfhdr {int e_phnum; int e_phentsize; int e_shnum; int e_shentsize; scalar_t__* e_ident; scalar_t__ e_version; size_t e_phoff; size_t e_shoff; } ;
struct elf_shdr {int dummy; } ;
struct elf_phdr {int dummy; } ;


 size_t EI_VERSION ;
 scalar_t__ EV_CURRENT ;
 int pr_debug (char*) ;

__attribute__((used)) static bool elf_is_ehdr_sane(const struct elfhdr *ehdr, size_t buf_len)
{
 if (ehdr->e_phnum > 0 && ehdr->e_phentsize != sizeof(struct elf_phdr)) {
  pr_debug("Bad program header size.\n");
  return 0;
 } else if (ehdr->e_shnum > 0 &&
     ehdr->e_shentsize != sizeof(struct elf_shdr)) {
  pr_debug("Bad section header size.\n");
  return 0;
 } else if (ehdr->e_ident[EI_VERSION] != EV_CURRENT ||
     ehdr->e_version != EV_CURRENT) {
  pr_debug("Unknown ELF version.\n");
  return 0;
 }

 if (ehdr->e_phoff > 0 && ehdr->e_phnum > 0) {
  size_t phdr_size;





  phdr_size = sizeof(struct elf_phdr) * ehdr->e_phnum;


  if (ehdr->e_phoff + phdr_size < ehdr->e_phoff) {
   pr_debug("Program headers at invalid location.\n");
   return 0;
  } else if (ehdr->e_phoff + phdr_size > buf_len) {
   pr_debug("Program headers truncated.\n");
   return 0;
  }
 }

 if (ehdr->e_shoff > 0 && ehdr->e_shnum > 0) {
  size_t shdr_size;





  shdr_size = sizeof(struct elf_shdr) * ehdr->e_shnum;


  if (ehdr->e_shoff + shdr_size < ehdr->e_shoff) {
   pr_debug("Section headers at invalid location.\n");
   return 0;
  } else if (ehdr->e_shoff + shdr_size > buf_len) {
   pr_debug("Section headers truncated.\n");
   return 0;
  }
 }

 return 1;
}
