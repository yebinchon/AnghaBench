
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;


 int PyTuple_SetItem (int *,unsigned int,int ) ;
 int _PyUnicode_FromString (char const*) ;

__attribute__((used)) static int tuple_set_string(PyObject *t, unsigned int pos, const char *s)
{
 return PyTuple_SetItem(t, pos, _PyUnicode_FromString(s));
}
