
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tep_func_handler ;
struct tep_handle {int dummy; } ;
struct tep_function_handler {scalar_t__ func; } ;


 struct tep_function_handler* find_func_handler (struct tep_handle*,char*) ;
 int remove_func_handler (struct tep_handle*,char*) ;

int tep_unregister_print_function(struct tep_handle *tep,
      tep_func_handler func, char *name)
{
 struct tep_function_handler *func_handle;

 func_handle = find_func_handler(tep, name);
 if (func_handle && func_handle->func == func) {
  remove_func_handler(tep, name);
  return 0;
 }
 return -1;
}
