
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;


 int * PyObject_CallObject (int *,int *) ;
 int Py_DECREF (int *) ;
 int handler_call_die (char const*) ;

__attribute__((used)) static void call_object(PyObject *handler, PyObject *args, const char *die_msg)
{
 PyObject *retval;

 retval = PyObject_CallObject(handler, args);
 if (retval == ((void*)0))
  handler_call_die(die_msg);
 Py_DECREF(retval);
}
