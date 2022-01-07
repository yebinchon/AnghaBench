
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evlist {int dummy; } ;
struct pyrf_evlist {struct evlist evlist; } ;
typedef int PyObject ;


 int PyArg_ParseTupleAndKeywords (int *,int *,char*,char**,int*) ;
 int PyErr_SetFromErrno (int ) ;
 int PyExc_OSError ;
 int * Py_BuildValue (char*,int) ;
 int evlist__poll (struct evlist*,int) ;

__attribute__((used)) static PyObject *pyrf_evlist__poll(struct pyrf_evlist *pevlist,
       PyObject *args, PyObject *kwargs)
{
 struct evlist *evlist = &pevlist->evlist;
 static char *kwlist[] = { "timeout", ((void*)0) };
 int timeout = -1, n;

 if (!PyArg_ParseTupleAndKeywords(args, kwargs, "|i", kwlist, &timeout))
  return ((void*)0);

 n = evlist__poll(evlist, timeout);
 if (n < 0) {
  PyErr_SetFromErrno(PyExc_OSError);
  return ((void*)0);
 }

 return Py_BuildValue("i", n);
}
