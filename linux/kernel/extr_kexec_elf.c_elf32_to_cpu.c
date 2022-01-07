
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct elfhdr {scalar_t__* e_ident; } ;


 size_t EI_DATA ;
 scalar_t__ ELFDATA2LSB ;
 scalar_t__ ELFDATA2MSB ;
 int be32_to_cpu (int ) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static uint32_t elf32_to_cpu(const struct elfhdr *ehdr, uint32_t value)
{
 if (ehdr->e_ident[EI_DATA] == ELFDATA2LSB)
  value = le32_to_cpu(value);
 else if (ehdr->e_ident[EI_DATA] == ELFDATA2MSB)
  value = be32_to_cpu(value);

 return value;
}
