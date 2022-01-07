
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;


 int PyErr_Clear () ;
 scalar_t__ PyErr_Occurred () ;
 int * PyObject_GetAttrString (int *,char*) ;
 int Py_DECREF (int *) ;
 scalar_t__ _PyLong_AsLong (int *) ;

__attribute__((used)) static int get_argument_count(PyObject *handler)
{
 int arg_count = 0;





 PyObject *code_obj = PyObject_GetAttrString(handler,
  "func_code");
 if (PyErr_Occurred()) {
  PyErr_Clear();
  code_obj = PyObject_GetAttrString(handler,
   "__code__");
 }
 PyErr_Clear();
 if (code_obj) {
  PyObject *arg_count_obj = PyObject_GetAttrString(code_obj,
   "co_argcount");
  if (arg_count_obj) {
   arg_count = (int) _PyLong_AsLong(arg_count_obj);
   Py_DECREF(arg_count_obj);
  }
  Py_DECREF(code_obj);
 }
 return arg_count;
}
