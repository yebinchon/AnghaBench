
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct variable {int exp_count; scalar_t__ flavor; int value; } ;


 scalar_t__ VAR_RECURSIVE ;
 char* expand_string_with_args (int ,int,char**) ;
 int pperror (char*,...) ;
 struct variable* variable_lookup (char const*) ;
 char* xstrdup (int ) ;

__attribute__((used)) static char *variable_expand(const char *name, int argc, char *argv[])
{
 struct variable *v;
 char *res;

 v = variable_lookup(name);
 if (!v)
  return ((void*)0);

 if (argc == 0 && v->exp_count)
  pperror("Recursive variable '%s' references itself (eventually)",
   name);

 if (v->exp_count > 1000)
  pperror("Too deep recursive expansion");

 v->exp_count++;

 if (v->flavor == VAR_RECURSIVE)
  res = expand_string_with_args(v->value, argc, argv);
 else
  res = xstrdup(v->value);

 v->exp_count--;

 return res;
}
