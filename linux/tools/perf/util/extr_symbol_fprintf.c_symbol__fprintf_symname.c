
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {int dummy; } ;
typedef int FILE ;


 size_t __symbol__fprintf_symname_offs (struct symbol const*,int *,int,int,int *) ;

size_t symbol__fprintf_symname(const struct symbol *sym, FILE *fp)
{
 return __symbol__fprintf_symname_offs(sym, ((void*)0), 0, 0, fp);
}
