
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;


 int call_object (int *,int *,char const*) ;
 int * get_handler (char const*) ;

__attribute__((used)) static void try_call_object(const char *handler_name, PyObject *args)
{
 PyObject *handler;

 handler = get_handler(handler_name);
 if (handler)
  call_object(handler, args, handler_name);
}
