
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct elfhdr {scalar_t__* e_ident; } ;


 size_t EI_DATA ;
 scalar_t__ ELFDATA2LSB ;
 scalar_t__ ELFDATA2MSB ;
 int be16_to_cpu (int ) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static uint16_t elf16_to_cpu(const struct elfhdr *ehdr, uint16_t value)
{
 if (ehdr->e_ident[EI_DATA] == ELFDATA2LSB)
  value = le16_to_cpu(value);
 else if (ehdr->e_ident[EI_DATA] == ELFDATA2MSB)
  value = be16_to_cpu(value);

 return value;
}
