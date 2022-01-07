
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {size_t sh_size; size_t sh_entsize; int sh_addralign; size_t sh_name; int sh_flags; int sh_type; } ;
struct section {size_t len; int changed; TYPE_3__ sh; scalar_t__ name; int idx; TYPE_1__* data; int list; int symbol_hash; int rela_hash; int rela_list; int symbol_list; } ;
struct elf {int elf; int sections; } ;
struct TYPE_5__ {int d_align; scalar_t__ d_size; scalar_t__ d_buf; } ;
struct TYPE_4__ {size_t d_size; int d_align; struct section* d_buf; } ;
typedef int Elf_Scn ;
typedef TYPE_2__ Elf_Data ;


 int INIT_LIST_HEAD (int *) ;
 int SHF_ALLOC ;
 int SHT_PROGBITS ;
 int WARN (char*) ;
 int WARN_ELF (char*) ;
 int * elf_getscn (int ,int ) ;
 int elf_ndxscn (int *) ;
 void* elf_newdata (int *) ;
 int * elf_newscn (int ) ;
 struct section* find_section_by_name (struct elf*,char*) ;
 int gelf_getshdr (int *,TYPE_3__*) ;
 int hash_init (int ) ;
 int list_add_tail (int *,int *) ;
 void* malloc (size_t) ;
 int memset (struct section*,int ,size_t) ;
 int perror (char*) ;
 scalar_t__ strdup (char const*) ;
 scalar_t__ strlen (char const*) ;

struct section *elf_create_section(struct elf *elf, const char *name,
       size_t entsize, int nr)
{
 struct section *sec, *shstrtab;
 size_t size = entsize * nr;
 Elf_Scn *s;
 Elf_Data *data;

 sec = malloc(sizeof(*sec));
 if (!sec) {
  perror("malloc");
  return ((void*)0);
 }
 memset(sec, 0, sizeof(*sec));

 INIT_LIST_HEAD(&sec->symbol_list);
 INIT_LIST_HEAD(&sec->rela_list);
 hash_init(sec->rela_hash);
 hash_init(sec->symbol_hash);

 list_add_tail(&sec->list, &elf->sections);

 s = elf_newscn(elf->elf);
 if (!s) {
  WARN_ELF("elf_newscn");
  return ((void*)0);
 }

 sec->name = strdup(name);
 if (!sec->name) {
  perror("strdup");
  return ((void*)0);
 }

 sec->idx = elf_ndxscn(s);
 sec->len = size;
 sec->changed = 1;

 sec->data = elf_newdata(s);
 if (!sec->data) {
  WARN_ELF("elf_newdata");
  return ((void*)0);
 }

 sec->data->d_size = size;
 sec->data->d_align = 1;

 if (size) {
  sec->data->d_buf = malloc(size);
  if (!sec->data->d_buf) {
   perror("malloc");
   return ((void*)0);
  }
  memset(sec->data->d_buf, 0, size);
 }

 if (!gelf_getshdr(s, &sec->sh)) {
  WARN_ELF("gelf_getshdr");
  return ((void*)0);
 }

 sec->sh.sh_size = size;
 sec->sh.sh_entsize = entsize;
 sec->sh.sh_type = SHT_PROGBITS;
 sec->sh.sh_addralign = 1;
 sec->sh.sh_flags = SHF_ALLOC;



 shstrtab = find_section_by_name(elf, ".shstrtab");
 if (!shstrtab)
  shstrtab = find_section_by_name(elf, ".strtab");
 if (!shstrtab) {
  WARN("can't find .shstrtab or .strtab section");
  return ((void*)0);
 }

 s = elf_getscn(elf->elf, shstrtab->idx);
 if (!s) {
  WARN_ELF("elf_getscn");
  return ((void*)0);
 }

 data = elf_newdata(s);
 if (!data) {
  WARN_ELF("elf_newdata");
  return ((void*)0);
 }

 data->d_buf = sec->name;
 data->d_size = strlen(name) + 1;
 data->d_align = 1;

 sec->sh.sh_name = shstrtab->len;

 shstrtab->len += strlen(name) + 1;
 shstrtab->changed = 1;

 return sec;
}
