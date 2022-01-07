
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kcore {int elf; } ;
typedef int off_t ;


 int ELF_C_WRITE ;
 int elf_update (int ,int ) ;

__attribute__((used)) static off_t kcore__write(struct kcore *kcore)
{
 return elf_update(kcore->elf, ELF_C_WRITE);
}
