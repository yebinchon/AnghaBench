
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sym {unsigned long name; unsigned long address; unsigned long size; scalar_t__ offset; } ;
typedef int Elf_Ehdr ;


 int info (char*,unsigned long) ;

__attribute__((used)) static void print_sym(Elf_Ehdr *hdr, struct sym *s)
{
 info("sym:    %s\n", s->name);
 info("addr:   0x%lx\n", s->address);
 info("size:   %d\n", s->size);
 info("offset: 0x%lx\n", (unsigned long)s->offset);
}
