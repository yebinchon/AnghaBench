
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct function {int min_args; int max_args; char* (* func ) (int,char**) ;int name; } ;


 int ARRAY_SIZE (struct function*) ;
 struct function* function_table ;
 int pperror (char*,char const*) ;
 scalar_t__ strcmp (int ,char const*) ;
 char* stub1 (int,char**) ;

__attribute__((used)) static char *function_expand(const char *name, int argc, char *argv[])
{
 const struct function *f;
 int i;

 for (i = 0; i < ARRAY_SIZE(function_table); i++) {
  f = &function_table[i];
  if (strcmp(f->name, name))
   continue;

  if (argc < f->min_args)
   pperror("too few function arguments passed to '%s'",
    name);

  if (argc > f->max_args)
   pperror("too many function arguments passed to '%s'",
    name);

  return f->func(argc, argv);
 }

 return ((void*)0);
}
