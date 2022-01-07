
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int st_name; } ;
typedef TYPE_1__ Elf_Sym ;
typedef int Elf_Rel ;


 size_t Elf_r_sym (int const*) ;
 char const* altmcount ;
 char gpfx ;
 scalar_t__ strcmp (char const*,char const*) ;
 size_t w (int ) ;

__attribute__((used)) static unsigned get_mcountsym(Elf_Sym const *const sym0,
         Elf_Rel const *relp,
         char const *const str0)
{
 unsigned mcountsym = 0;

 Elf_Sym const *const symp =
  &sym0[Elf_r_sym(relp)];
 char const *symname = &str0[w(symp->st_name)];
 char const *mcount = gpfx == '_' ? "_mcount" : "mcount";
 char const *fentry = "__fentry__";

 if (symname[0] == '.')
  ++symname;
 if (strcmp(mcount, symname) == 0 ||
     (altmcount && strcmp(altmcount, symname) == 0) ||
     (strcmp(fentry, symname) == 0))
  mcountsym = Elf_r_sym(relp);

 return mcountsym;
}
