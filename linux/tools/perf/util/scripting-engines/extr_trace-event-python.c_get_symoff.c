
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {int * name; } ;
struct addr_location {int dummy; } ;


 unsigned long get_offset (struct symbol*,struct addr_location*) ;
 int scnprintf (char*,int,char*,char*,...) ;

__attribute__((used)) static int get_symoff(struct symbol *sym, struct addr_location *al,
        bool print_off, char *bf, int size)
{
 unsigned long offset;

 if (!sym || !sym->name[0])
  return scnprintf(bf, size, "%s", "[unknown]");

 if (!print_off)
  return scnprintf(bf, size, "%s", sym->name);

 offset = get_offset(sym, al);

 return scnprintf(bf, size, "%s+0x%x", sym->name, offset);
}
