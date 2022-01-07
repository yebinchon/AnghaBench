
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kexec_elf_info {int * proghdrs; struct elfhdr* ehdr; } ;
struct elfhdr {int e_phnum; } ;
struct elf_phdr {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int elf_read_phdr (char const*,size_t,struct kexec_elf_info*,size_t) ;
 int kfree (int *) ;
 int * kzalloc (size_t,int ) ;

__attribute__((used)) static int elf_read_phdrs(const char *buf, size_t len,
     struct kexec_elf_info *elf_info)
{
 size_t phdr_size, i;
 const struct elfhdr *ehdr = elf_info->ehdr;





 phdr_size = sizeof(struct elf_phdr) * ehdr->e_phnum;

 elf_info->proghdrs = kzalloc(phdr_size, GFP_KERNEL);
 if (!elf_info->proghdrs)
  return -ENOMEM;

 for (i = 0; i < ehdr->e_phnum; i++) {
  int ret;

  ret = elf_read_phdr(buf, len, elf_info, i);
  if (ret) {
   kfree(elf_info->proghdrs);
   elf_info->proghdrs = ((void*)0);
   return ret;
  }
 }

 return 0;
}
