
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;


 int PyTuple_SetItem (int *,unsigned int,int ) ;
 int _PyBytes_FromStringAndSize (void*,unsigned int) ;

__attribute__((used)) static int tuple_set_bytes(PyObject *t, unsigned int pos, void *bytes,
      unsigned int sz)
{
 return PyTuple_SetItem(t, pos, _PyBytes_FromStringAndSize(bytes, sz));
}
