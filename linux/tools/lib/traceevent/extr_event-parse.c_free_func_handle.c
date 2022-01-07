
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_function_handler {struct tep_function_handler* next; struct tep_function_handler* params; struct tep_function_handler* name; } ;
struct func_params {struct func_params* next; struct func_params* params; struct func_params* name; } ;


 int free (struct tep_function_handler*) ;

__attribute__((used)) static void free_func_handle(struct tep_function_handler *func)
{
 struct func_params *params;

 free(func->name);

 while (func->params) {
  params = func->params;
  func->params = params->next;
  free(params);
 }

 free(func);
}
