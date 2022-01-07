
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s32 ;
typedef int PyObject ;


 int PyTuple_SetItem (int *,unsigned int,int ) ;
 int _PyLong_FromLong (int ) ;

__attribute__((used)) static int tuple_set_s32(PyObject *t, unsigned int pos, s32 val)
{
 return PyTuple_SetItem(t, pos, _PyLong_FromLong(val));
}
