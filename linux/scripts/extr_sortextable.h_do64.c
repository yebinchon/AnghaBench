
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef int (* table_sort_t ) (char*,int) ;
struct TYPE_7__ {int e_shstrndx; int e_shnum; int e_shoff; } ;
struct TYPE_6__ {int sh_addr; int sh_offset; int sh_size; int sh_type; int sh_info; int sh_name; int sh_link; } ;
struct TYPE_5__ {int st_value; int st_shndx; int st_name; int st_info; } ;
typedef TYPE_1__ const Elf_Sym ;
typedef TYPE_2__ Elf_Shdr ;
typedef int Elf_Rel ;
typedef TYPE_3__ Elf_Ehdr ;
typedef int Elf32_Word ;


 scalar_t__ ELF_ST_TYPE (int ) ;
 unsigned int SHN_UNDEF ;
 unsigned int SHN_XINDEX ;
 int SHT_REL ;
 int SHT_RELA ;
 int SHT_SYMTAB_SHNDX ;
 scalar_t__ STT_OBJECT ;
 int _r (int *) ;
 int compare_extable ;
 int extable_ent_size ;
 int fail_file () ;
 int fprintf (int ,char*,char const* const) ;
 size_t get_secindex (unsigned int,int,int *) ;
 int memset (int *,int ,int) ;
 int printf (char*,unsigned long) ;
 int qsort (char*,int,int,int ) ;
 int r (int *) ;
 unsigned int r2 (int *) ;
 int stderr ;
 scalar_t__ strcmp (char const*,char*) ;
 int w (int ,int *) ;

__attribute__((used)) static void
do_func(Elf_Ehdr *ehdr, char const *const fname, table_sort_t custom_sort)
{
 Elf_Shdr *shdr;
 Elf_Shdr *shstrtab_sec;
 Elf_Shdr *strtab_sec = ((void*)0);
 Elf_Shdr *symtab_sec = ((void*)0);
 Elf_Shdr *extab_sec = ((void*)0);
 Elf_Sym *sym;
 const Elf_Sym *symtab;
 Elf32_Word *symtab_shndx_start = ((void*)0);
 Elf_Sym *sort_needed_sym;
 Elf_Shdr *sort_needed_sec;
 Elf_Rel *relocs = ((void*)0);
 int relocs_size = 0;
 uint32_t *sort_done_location;
 const char *secstrtab;
 const char *strtab;
 char *extab_image;
 int extab_index = 0;
 int i;
 int idx;
 unsigned int num_sections;
 unsigned int secindex_strings;

 shdr = (Elf_Shdr *)((char *)ehdr + _r(&ehdr->e_shoff));

 num_sections = r2(&ehdr->e_shnum);
 if (num_sections == SHN_UNDEF)
  num_sections = _r(&shdr[0].sh_size);

 secindex_strings = r2(&ehdr->e_shstrndx);
 if (secindex_strings == SHN_XINDEX)
  secindex_strings = r(&shdr[0].sh_link);

 shstrtab_sec = shdr + secindex_strings;
 secstrtab = (const char *)ehdr + _r(&shstrtab_sec->sh_offset);
 for (i = 0; i < num_sections; i++) {
  idx = r(&shdr[i].sh_name);
  if (strcmp(secstrtab + idx, "__ex_table") == 0) {
   extab_sec = shdr + i;
   extab_index = i;
  }
  if ((r(&shdr[i].sh_type) == SHT_REL ||
       r(&shdr[i].sh_type) == SHT_RELA) &&
      r(&shdr[i].sh_info) == extab_index) {
   relocs = (void *)ehdr + _r(&shdr[i].sh_offset);
   relocs_size = _r(&shdr[i].sh_size);
  }
  if (strcmp(secstrtab + idx, ".symtab") == 0)
   symtab_sec = shdr + i;
  if (strcmp(secstrtab + idx, ".strtab") == 0)
   strtab_sec = shdr + i;
  if (r(&shdr[i].sh_type) == SHT_SYMTAB_SHNDX)
   symtab_shndx_start = (Elf32_Word *)(
    (const char *)ehdr + _r(&shdr[i].sh_offset));
 }
 if (strtab_sec == ((void*)0)) {
  fprintf(stderr, "no .strtab in  file: %s\n", fname);
  fail_file();
 }
 if (symtab_sec == ((void*)0)) {
  fprintf(stderr, "no .symtab in  file: %s\n", fname);
  fail_file();
 }
 symtab = (const Elf_Sym *)((const char *)ehdr +
       _r(&symtab_sec->sh_offset));
 if (extab_sec == ((void*)0)) {
  fprintf(stderr, "no __ex_table in  file: %s\n", fname);
  fail_file();
 }
 strtab = (const char *)ehdr + _r(&strtab_sec->sh_offset);

 extab_image = (void *)ehdr + _r(&extab_sec->sh_offset);

 if (custom_sort) {
  custom_sort(extab_image, _r(&extab_sec->sh_size));
 } else {
  int num_entries = _r(&extab_sec->sh_size) / extable_ent_size;
  qsort(extab_image, num_entries,
        extable_ent_size, compare_extable);
 }

 if (relocs)
  memset(relocs, 0, relocs_size);


 sort_needed_sym = ((void*)0);
 for (i = 0; i < _r(&symtab_sec->sh_size) / sizeof(Elf_Sym); i++) {
  sym = (void *)ehdr + _r(&symtab_sec->sh_offset);
  sym += i;
  if (ELF_ST_TYPE(sym->st_info) != STT_OBJECT)
   continue;
  idx = r(&sym->st_name);
  if (strcmp(strtab + idx, "main_extable_sort_needed") == 0) {
   sort_needed_sym = sym;
   break;
  }
 }
 if (sort_needed_sym == ((void*)0)) {
  fprintf(stderr,
   "no main_extable_sort_needed symbol in  file: %s\n",
   fname);
  fail_file();
 }
 sort_needed_sec = &shdr[get_secindex(r2(&sym->st_shndx),
          sort_needed_sym - symtab,
          symtab_shndx_start)];
 sort_done_location = (void *)ehdr +
  _r(&sort_needed_sec->sh_offset) +
  _r(&sort_needed_sym->st_value) -
  _r(&sort_needed_sec->sh_addr);






 w(0, sort_done_location);
}
