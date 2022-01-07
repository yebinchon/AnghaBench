
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t e_phnum; int e_phoff; int e_ehsize; int e_phentsize; scalar_t__ e_shstrndx; scalar_t__ e_shnum; scalar_t__ e_shentsize; int e_flags; scalar_t__ e_shoff; scalar_t__ e_entry; int e_version; int e_machine; int e_type; int e_ident; } ;
struct kcore {scalar_t__ elfclass; int elf; TYPE_1__ ehdr; } ;
typedef TYPE_1__ GElf_Ehdr ;
typedef int Elf64_Phdr ;
typedef int Elf64_Ehdr ;
typedef int Elf32_Phdr ;
typedef int Elf32_Ehdr ;


 int EI_NIDENT ;
 scalar_t__ ELFCLASS32 ;
 int gelf_newphdr (int ,size_t) ;
 int gelf_update_ehdr (int ,TYPE_1__*) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static int kcore__copy_hdr(struct kcore *from, struct kcore *to, size_t count)
{
 GElf_Ehdr *ehdr = &to->ehdr;
 GElf_Ehdr *kehdr = &from->ehdr;

 memcpy(ehdr->e_ident, kehdr->e_ident, EI_NIDENT);
 ehdr->e_type = kehdr->e_type;
 ehdr->e_machine = kehdr->e_machine;
 ehdr->e_version = kehdr->e_version;
 ehdr->e_entry = 0;
 ehdr->e_shoff = 0;
 ehdr->e_flags = kehdr->e_flags;
 ehdr->e_phnum = count;
 ehdr->e_shentsize = 0;
 ehdr->e_shnum = 0;
 ehdr->e_shstrndx = 0;

 if (from->elfclass == ELFCLASS32) {
  ehdr->e_phoff = sizeof(Elf32_Ehdr);
  ehdr->e_ehsize = sizeof(Elf32_Ehdr);
  ehdr->e_phentsize = sizeof(Elf32_Phdr);
 } else {
  ehdr->e_phoff = sizeof(Elf64_Ehdr);
  ehdr->e_ehsize = sizeof(Elf64_Ehdr);
  ehdr->e_phentsize = sizeof(Elf64_Phdr);
 }

 if (!gelf_update_ehdr(to->elf, ehdr))
  return -1;

 if (!gelf_newphdr(to->elf, count))
  return -1;

 return 0;
}
