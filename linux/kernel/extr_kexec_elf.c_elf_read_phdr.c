
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kexec_elf_info {struct elfhdr const* ehdr; int * proghdrs; } ;
typedef struct elfhdr {int e_phoff; int* e_ident; } const elfhdr ;
struct elf_phdr {void* p_align; void* p_memsz; void* p_filesz; void* p_vaddr; void* p_paddr; void* p_offset; void* p_flags; void* p_type; } ;


 int EINVAL ;
 size_t EI_CLASS ;


 int ENOEXEC ;
 void* elf32_to_cpu (struct elfhdr const*,void*) ;
 void* elf64_to_cpu (struct elfhdr const*,void*) ;
 scalar_t__ elf_is_phdr_sane (struct elf_phdr*,size_t) ;
 int pr_debug (char*) ;

__attribute__((used)) static int elf_read_phdr(const char *buf, size_t len,
    struct kexec_elf_info *elf_info,
    int idx)
{

 struct elf_phdr *phdr = (struct elf_phdr *) &elf_info->proghdrs[idx];
 const struct elfhdr *ehdr = elf_info->ehdr;
 const char *pbuf;
 struct elf_phdr *buf_phdr;

 pbuf = buf + elf_info->ehdr->e_phoff + (idx * sizeof(*buf_phdr));
 buf_phdr = (struct elf_phdr *) pbuf;

 phdr->p_type = elf32_to_cpu(elf_info->ehdr, buf_phdr->p_type);
 phdr->p_flags = elf32_to_cpu(elf_info->ehdr, buf_phdr->p_flags);

 switch (ehdr->e_ident[EI_CLASS]) {
 case 128:
  phdr->p_offset = elf64_to_cpu(ehdr, buf_phdr->p_offset);
  phdr->p_paddr = elf64_to_cpu(ehdr, buf_phdr->p_paddr);
  phdr->p_vaddr = elf64_to_cpu(ehdr, buf_phdr->p_vaddr);
  phdr->p_filesz = elf64_to_cpu(ehdr, buf_phdr->p_filesz);
  phdr->p_memsz = elf64_to_cpu(ehdr, buf_phdr->p_memsz);
  phdr->p_align = elf64_to_cpu(ehdr, buf_phdr->p_align);
  break;

 case 129:
  phdr->p_offset = elf32_to_cpu(ehdr, buf_phdr->p_offset);
  phdr->p_paddr = elf32_to_cpu(ehdr, buf_phdr->p_paddr);
  phdr->p_vaddr = elf32_to_cpu(ehdr, buf_phdr->p_vaddr);
  phdr->p_filesz = elf32_to_cpu(ehdr, buf_phdr->p_filesz);
  phdr->p_memsz = elf32_to_cpu(ehdr, buf_phdr->p_memsz);
  phdr->p_align = elf32_to_cpu(ehdr, buf_phdr->p_align);
  break;

 default:
  pr_debug("Unknown ELF class.\n");
  return -EINVAL;
 }

 return elf_is_phdr_sane(phdr, len) ? 0 : -ENOEXEC;
}
