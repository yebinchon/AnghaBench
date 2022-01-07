
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kexec_elf_info {int proghdrs; } ;


 int kfree (int ) ;
 int memset (struct kexec_elf_info*,int ,int) ;

void kexec_free_elf_info(struct kexec_elf_info *elf_info)
{
 kfree(elf_info->proghdrs);
 memset(elf_info, 0, sizeof(*elf_info));
}
