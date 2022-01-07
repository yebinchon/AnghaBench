
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {int dummy; } ;
struct addr_location {int dummy; } ;
typedef int FILE ;


 size_t __symbol__fprintf_symname_offs (struct symbol const*,struct addr_location const*,int,int,int *) ;

size_t symbol__fprintf_symname_offs(const struct symbol *sym,
        const struct addr_location *al,
        FILE *fp)
{
 return __symbol__fprintf_symname_offs(sym, al, 0, 1, fp);
}
