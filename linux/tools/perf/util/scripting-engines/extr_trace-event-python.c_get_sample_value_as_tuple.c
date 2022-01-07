
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sample_read_value {int value; int id; } ;
typedef int PyObject ;


 int PyLong_FromUnsignedLongLong (int ) ;
 int * PyTuple_New (int) ;
 int PyTuple_SetItem (int *,int,int ) ;
 int Py_FatalError (char*) ;

__attribute__((used)) static PyObject *get_sample_value_as_tuple(struct sample_read_value *value)
{
 PyObject *t;

 t = PyTuple_New(2);
 if (!t)
  Py_FatalError("couldn't create Python tuple");
 PyTuple_SetItem(t, 0, PyLong_FromUnsignedLongLong(value->id));
 PyTuple_SetItem(t, 1, PyLong_FromUnsignedLongLong(value->value));
 return t;
}
