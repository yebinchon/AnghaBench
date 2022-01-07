
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {int * namespace; } ;


 int * NOFAIL (int ) ;
 struct symbol* find_symbol (char const*) ;
 int free (int *) ;
 int merror (char*,char const*,char const*) ;
 int strdup (char const*) ;

__attribute__((used)) static void sym_update_namespace(const char *symname, const char *namespace)
{
 struct symbol *s = find_symbol(symname);





 if (!s) {
  merror("Could not update namespace(%s) for symbol %s\n",
         namespace, symname);
  return;
 }

 free(s->namespace);
 s->namespace =
  namespace && namespace[0] ? NOFAIL(strdup(namespace)) : ((void*)0);
}
