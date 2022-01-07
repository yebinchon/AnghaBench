
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {unsigned int weak; int is_static; struct symbol* next; int name; } ;


 struct symbol* NOFAIL (int ) ;
 int malloc (scalar_t__) ;
 int memset (struct symbol*,int ,int) ;
 int strcpy (int ,char const*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static struct symbol *alloc_symbol(const char *name, unsigned int weak,
       struct symbol *next)
{
 struct symbol *s = NOFAIL(malloc(sizeof(*s) + strlen(name) + 1));

 memset(s, 0, sizeof(*s));
 strcpy(s->name, name);
 s->weak = weak;
 s->next = next;
 s->is_static = 1;
 return s;
}
