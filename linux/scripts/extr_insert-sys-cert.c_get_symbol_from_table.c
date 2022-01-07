
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct sym {int address; int offset; char* name; void* content; int size; } ;
struct TYPE_11__ {int e_shoff; } ;
struct TYPE_10__ {int sh_addr; int sh_offset; } ;
struct TYPE_9__ {int st_shndx; int st_value; int st_size; } ;
typedef TYPE_1__ Elf_Sym ;
typedef TYPE_2__ Elf_Shdr ;
typedef TYPE_3__ Elf_Ehdr ;


 TYPE_1__* find_elf_symbol (TYPE_3__*,TYPE_2__*,char*) ;

__attribute__((used)) static void get_symbol_from_table(Elf_Ehdr *hdr, Elf_Shdr *symtab,
      char *name, struct sym *s)
{
 Elf_Shdr *sec;
 int secndx;
 Elf_Sym *elf_sym;
 Elf_Shdr *x;

 x = (void *)hdr + hdr->e_shoff;
 s->size = 0;
 s->address = 0;
 s->offset = 0;
 elf_sym = find_elf_symbol(hdr, symtab, name);
 if (!elf_sym)
  return;
 secndx = elf_sym->st_shndx;
 if (!secndx)
  return;
 sec = &x[secndx];
 s->size = elf_sym->st_size;
 s->address = elf_sym->st_value;
 s->offset = s->address - sec->sh_addr
          + sec->sh_offset;
 s->name = name;
 s->content = (void *)hdr + s->offset;
}
