
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {int export; struct module* module; } ;
struct module {int dummy; } ;
typedef enum export { ____Placeholder_export } export ;


 unsigned int SYMBOL_HASH_SIZE ;
 struct symbol* alloc_symbol (char const*,int ,struct symbol*) ;
 struct symbol** symbolhash ;
 unsigned int tdb_hash (char const*) ;

__attribute__((used)) static struct symbol *new_symbol(const char *name, struct module *module,
     enum export export)
{
 unsigned int hash;
 struct symbol *new;

 hash = tdb_hash(name) % SYMBOL_HASH_SIZE;
 new = symbolhash[hash] = alloc_symbol(name, 0, symbolhash[hash]);
 new->module = module;
 new->export = export;
 return new;
}
