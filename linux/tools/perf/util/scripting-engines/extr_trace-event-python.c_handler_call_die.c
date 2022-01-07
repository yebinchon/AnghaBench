
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PyErr_Print () ;
 int Py_FatalError (char*) ;
 int abort () ;

__attribute__((used)) static void handler_call_die(const char *handler_name)
{
 PyErr_Print();
 Py_FatalError("problem in Python trace event handler");


 abort();
}
