
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * PyImport_AddModule (char*) ;
 int * PyModule_GetDict (int *) ;
 int Py_INCREF (int *) ;
 int Py_XDECREF (int *) ;
 int * main_dict ;
 int * main_module ;
 int try_call_object (char*,int *) ;

__attribute__((used)) static int run_start_sub(void)
{
 main_module = PyImport_AddModule("__main__");
 if (main_module == ((void*)0))
  return -1;
 Py_INCREF(main_module);

 main_dict = PyModule_GetDict(main_module);
 if (main_dict == ((void*)0))
  goto error;
 Py_INCREF(main_dict);

 try_call_object("trace_begin", ((void*)0));

 return 0;

error:
 Py_XDECREF(main_dict);
 Py_XDECREF(main_module);
 return -1;
}
