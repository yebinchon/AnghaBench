
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elfhdr {int e_ident; } ;


 int ELFMAG ;
 int SELFMAG ;
 scalar_t__ memcmp (int ,int ,int ) ;

__attribute__((used)) static inline bool elf_is_elf_file(const struct elfhdr *ehdr)
{
 return memcmp(ehdr->e_ident, ELFMAG, SELFMAG) == 0;
}
