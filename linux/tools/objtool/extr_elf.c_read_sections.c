
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ sh_size; int sh_name; } ;
struct section {scalar_t__ len; TYPE_1__ sh; int name; TYPE_2__* data; int idx; int list; int symbol_hash; int rela_hash; int rela_list; int symbol_list; } ;
struct elf {int elf; int sections; } ;
struct TYPE_4__ {scalar_t__ d_off; scalar_t__ d_size; } ;
typedef int Elf_Scn ;


 int INIT_LIST_HEAD (int *) ;
 int WARN (char*,...) ;
 int WARN_ELF (char*) ;
 TYPE_2__* elf_getdata (int *,int *) ;
 int * elf_getscn (int ,int) ;
 scalar_t__ elf_getshdrnum (int ,size_t*) ;
 scalar_t__ elf_getshdrstrndx (int ,size_t*) ;
 int elf_ndxscn (int *) ;
 scalar_t__ elf_nextscn (int ,int *) ;
 int elf_strptr (int ,size_t,int ) ;
 int gelf_getshdr (int *,TYPE_1__*) ;
 int hash_init (int ) ;
 int list_add_tail (int *,int *) ;
 struct section* malloc (int) ;
 int memset (struct section*,int ,int) ;
 int perror (char*) ;

__attribute__((used)) static int read_sections(struct elf *elf)
{
 Elf_Scn *s = ((void*)0);
 struct section *sec;
 size_t shstrndx, sections_nr;
 int i;

 if (elf_getshdrnum(elf->elf, &sections_nr)) {
  WARN_ELF("elf_getshdrnum");
  return -1;
 }

 if (elf_getshdrstrndx(elf->elf, &shstrndx)) {
  WARN_ELF("elf_getshdrstrndx");
  return -1;
 }

 for (i = 0; i < sections_nr; i++) {
  sec = malloc(sizeof(*sec));
  if (!sec) {
   perror("malloc");
   return -1;
  }
  memset(sec, 0, sizeof(*sec));

  INIT_LIST_HEAD(&sec->symbol_list);
  INIT_LIST_HEAD(&sec->rela_list);
  hash_init(sec->rela_hash);
  hash_init(sec->symbol_hash);

  list_add_tail(&sec->list, &elf->sections);

  s = elf_getscn(elf->elf, i);
  if (!s) {
   WARN_ELF("elf_getscn");
   return -1;
  }

  sec->idx = elf_ndxscn(s);

  if (!gelf_getshdr(s, &sec->sh)) {
   WARN_ELF("gelf_getshdr");
   return -1;
  }

  sec->name = elf_strptr(elf->elf, shstrndx, sec->sh.sh_name);
  if (!sec->name) {
   WARN_ELF("elf_strptr");
   return -1;
  }

  if (sec->sh.sh_size != 0) {
   sec->data = elf_getdata(s, ((void*)0));
   if (!sec->data) {
    WARN_ELF("elf_getdata");
    return -1;
   }
   if (sec->data->d_off != 0 ||
       sec->data->d_size != sec->sh.sh_size) {
    WARN("unexpected data attributes for %s",
         sec->name);
    return -1;
   }
  }
  sec->len = sec->sh.sh_size;
 }


 if (elf_nextscn(elf->elf, s)) {
  WARN("section entry mismatch");
  return -1;
 }

 return 0;
}
