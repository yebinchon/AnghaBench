
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {int dummy; } ;


 int repsep_snprintf (char*,size_t,char*,unsigned int,char*) ;
 char* symbol__size (struct symbol*) ;

__attribute__((used)) static int _hist_entry__sym_size_snprintf(struct symbol *sym, char *bf,
       size_t bf_size, unsigned int width)
{
 if (sym)
  return repsep_snprintf(bf, bf_size, "%*d", width, symbol__size(sym));

 return repsep_snprintf(bf, bf_size, "%*s", width, "unknown");
}
