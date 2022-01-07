
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;


 int PyCallable_Check (int *) ;
 int * PyDict_GetItemString (int ,char const*) ;
 int main_dict ;

__attribute__((used)) static PyObject *get_handler(const char *handler_name)
{
 PyObject *handler;

 handler = PyDict_GetItemString(main_dict, handler_name);
 if (handler && !PyCallable_Check(handler))
  return ((void*)0);
 return handler;
}
