
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_handle {struct tep_function_handler* func_handlers; } ;
struct tep_function_handler {int name; struct tep_function_handler* next; } ;


 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static struct tep_function_handler *
find_func_handler(struct tep_handle *tep, char *func_name)
{
 struct tep_function_handler *func;

 if (!tep)
  return ((void*)0);

 for (func = tep->func_handlers; func; func = func->next) {
  if (strcmp(func->name, func_name) == 0)
   break;
 }

 return func;
}
