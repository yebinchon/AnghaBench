
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sh_addralign; int sh_flags; int sh_info; int sh_link; int sh_type; } ;
struct section {char* name; TYPE_1__ sh; int idx; struct section* base; struct section* rela; } ;
struct elf {int dummy; } ;
struct TYPE_4__ {int idx; } ;
typedef int GElf_Rela ;


 int SHF_INFO_LINK ;
 int SHT_RELA ;
 struct section* elf_create_section (struct elf*,char*,int,int ) ;
 TYPE_2__* find_section_by_name (struct elf*,char*) ;
 int free (char*) ;
 char* malloc (scalar_t__) ;
 int perror (char*) ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;
 scalar_t__ strlen (char*) ;

struct section *elf_create_rela_section(struct elf *elf, struct section *base)
{
 char *relaname;
 struct section *sec;

 relaname = malloc(strlen(base->name) + strlen(".rela") + 1);
 if (!relaname) {
  perror("malloc");
  return ((void*)0);
 }
 strcpy(relaname, ".rela");
 strcat(relaname, base->name);

 sec = elf_create_section(elf, relaname, sizeof(GElf_Rela), 0);
 free(relaname);
 if (!sec)
  return ((void*)0);

 base->rela = sec;
 sec->base = base;

 sec->sh.sh_type = SHT_RELA;
 sec->sh.sh_addralign = 8;
 sec->sh.sh_link = find_section_by_name(elf, ".symtab")->idx;
 sec->sh.sh_info = base->idx;
 sec->sh.sh_flags = SHF_INFO_LINK;

 return sec;
}
