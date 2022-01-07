
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* e_ident; } ;
typedef TYPE_1__ GElf_Ehdr ;


 size_t EI_DATA ;
 scalar_t__ ELFDATA2LSB ;
 scalar_t__ ELFDATA2MSB ;

__attribute__((used)) static bool btf_check_endianness(const GElf_Ehdr *ehdr)
{

 return ehdr->e_ident[EI_DATA] == ELFDATA2LSB;





}
