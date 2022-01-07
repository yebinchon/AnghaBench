
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kexec_elf_info {int dummy; } ;
struct elfhdr {int dummy; } ;


 int ENOEXEC ;
 scalar_t__ elf_check_arch (struct elfhdr*) ;
 int kexec_build_elf_info (char const*,unsigned long,struct elfhdr*,struct kexec_elf_info*) ;
 int kexec_free_elf_info (struct kexec_elf_info*) ;

int kexec_elf_probe(const char *buf, unsigned long len)
{
 struct elfhdr ehdr;
 struct kexec_elf_info elf_info;
 int ret;

 ret = kexec_build_elf_info(buf, len, &ehdr, &elf_info);
 if (ret)
  return ret;

 kexec_free_elf_info(&elf_info);

 return elf_check_arch(&ehdr) ? 0 : -ENOEXEC;
}
