
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;


 int * PyTuple_New (unsigned int) ;
 int Py_FatalError (char*) ;

__attribute__((used)) static PyObject *tuple_new(unsigned int sz)
{
 PyObject *t;

 t = PyTuple_New(sz);
 if (!t)
  Py_FatalError("couldn't create Python tuple");
 return t;
}
