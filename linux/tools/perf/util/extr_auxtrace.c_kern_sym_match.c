
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sym_args {scalar_t__ cnt; scalar_t__ idx; scalar_t__ selected; scalar_t__ global; int name; } ;


 scalar_t__ isupper (char) ;
 scalar_t__ kallsyms__is_function (char) ;
 int strcmp (char const*,int ) ;

__attribute__((used)) static bool kern_sym_match(struct sym_args *args, const char *name, char type)
{

 return kallsyms__is_function(type) &&
        !strcmp(name, args->name) &&
        ((args->global && isupper(type)) ||
  (args->selected && ++(args->cnt) == args->idx) ||
  (!args->global && !args->selected));
}
