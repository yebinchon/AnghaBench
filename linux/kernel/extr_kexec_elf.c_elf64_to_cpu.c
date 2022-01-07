
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct elfhdr {scalar_t__* e_ident; } ;


 size_t EI_DATA ;
 scalar_t__ ELFDATA2LSB ;
 scalar_t__ ELFDATA2MSB ;
 int be64_to_cpu (int ) ;
 int le64_to_cpu (int ) ;

__attribute__((used)) static uint64_t elf64_to_cpu(const struct elfhdr *ehdr, uint64_t value)
{
 if (ehdr->e_ident[EI_DATA] == ELFDATA2LSB)
  value = le64_to_cpu(value);
 else if (ehdr->e_ident[EI_DATA] == ELFDATA2MSB)
  value = be64_to_cpu(value);

 return value;
}
