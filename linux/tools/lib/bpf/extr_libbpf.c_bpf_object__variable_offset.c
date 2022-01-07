
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int strtabidx; int elf; TYPE_3__* symbols; } ;
struct bpf_object {TYPE_1__ efile; } ;
typedef int __u32 ;
struct TYPE_8__ {int d_size; } ;
struct TYPE_7__ {int st_value; int st_name; int st_info; } ;
typedef TYPE_2__ GElf_Sym ;
typedef TYPE_3__ Elf_Data ;


 int EINVAL ;
 int EIO ;
 int ENOENT ;
 scalar_t__ GELF_ST_BIND (int ) ;
 scalar_t__ GELF_ST_TYPE (int ) ;
 scalar_t__ STB_GLOBAL ;
 scalar_t__ STT_OBJECT ;
 char* elf_strptr (int ,int ,int ) ;
 int gelf_getsym (TYPE_3__*,size_t,TYPE_2__*) ;
 int pr_warning (char*,char const*) ;
 scalar_t__ strcmp (char const*,char const*) ;

int bpf_object__variable_offset(const struct bpf_object *obj, const char *name,
    __u32 *off)
{
 Elf_Data *symbols = obj->efile.symbols;
 const char *sname;
 size_t si;

 if (!name || !off)
  return -EINVAL;

 for (si = 0; si < symbols->d_size / sizeof(GElf_Sym); si++) {
  GElf_Sym sym;

  if (!gelf_getsym(symbols, si, &sym))
   continue;
  if (GELF_ST_BIND(sym.st_info) != STB_GLOBAL ||
      GELF_ST_TYPE(sym.st_info) != STT_OBJECT)
   continue;

  sname = elf_strptr(obj->efile.elf, obj->efile.strtabidx,
       sym.st_name);
  if (!sname) {
   pr_warning("failed to get sym name string for var %s\n",
       name);
   return -EIO;
  }
  if (strcmp(name, sname) == 0) {
   *off = sym.st_value;
   return 0;
  }
 }

 return -ENOENT;
}
