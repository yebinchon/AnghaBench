
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evlist {int dummy; } ;
struct pyrf_evlist {struct evlist evlist; } ;
typedef int PyObject ;


 int PyArg_ParseTupleAndKeywords (int *,int *,char*,char**,int*,int*) ;
 int PyErr_SetFromErrno (int ) ;
 int PyExc_OSError ;
 int Py_INCREF (int *) ;
 int * Py_None ;
 scalar_t__ evlist__mmap (struct evlist*,int) ;

__attribute__((used)) static PyObject *pyrf_evlist__mmap(struct pyrf_evlist *pevlist,
       PyObject *args, PyObject *kwargs)
{
 struct evlist *evlist = &pevlist->evlist;
 static char *kwlist[] = { "pages", "overwrite", ((void*)0) };
 int pages = 128, overwrite = 0;

 if (!PyArg_ParseTupleAndKeywords(args, kwargs, "|ii", kwlist,
      &pages, &overwrite))
  return ((void*)0);

 if (evlist__mmap(evlist, pages) < 0) {
  PyErr_SetFromErrno(PyExc_OSError);
  return ((void*)0);
 }

 Py_INCREF(Py_None);
 return Py_None;
}
