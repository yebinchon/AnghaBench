
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scripting_context {int dummy; } ;
typedef int PyObject ;


 int PyArg_ParseTuple (int *,char*,int **) ;
 int * Py_BuildValue (char*,int) ;
 struct scripting_context* _PyCapsule_GetPointer (int *,int *) ;
 int common_flags (struct scripting_context*) ;

__attribute__((used)) static PyObject *perf_trace_context_common_flags(PyObject *obj,
       PyObject *args)
{
 static struct scripting_context *scripting_context;
 PyObject *context;
 int retval;

 if (!PyArg_ParseTuple(args, "O", &context))
  return ((void*)0);

 scripting_context = _PyCapsule_GetPointer(context, ((void*)0));
 retval = common_flags(scripting_context);

 return Py_BuildValue("i", retval);
}
