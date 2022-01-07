
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Elf ;


 int ELF_C_READ ;
 int * elf_begin (int ,int ,int ) ;

int main(void)
{
 Elf *elf = elf_begin(0, ELF_C_READ, 0);

 return (long)elf;
}
