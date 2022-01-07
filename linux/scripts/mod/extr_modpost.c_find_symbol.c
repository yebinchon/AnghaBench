
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {int name; struct symbol* next; } ;


 size_t SYMBOL_HASH_SIZE ;
 scalar_t__ strcmp (int ,char const*) ;
 struct symbol** symbolhash ;
 size_t tdb_hash (char const*) ;

__attribute__((used)) static struct symbol *find_symbol(const char *name)
{
 struct symbol *s;


 if (name[0] == '.')
  name++;

 for (s = symbolhash[tdb_hash(name) % SYMBOL_HASH_SIZE]; s; s = s->next) {
  if (strcmp(s->name, name) == 0)
   return s;
 }
 return ((void*)0);
}
