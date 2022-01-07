
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pyrf_thread_map {struct perf_thread_map* threads; } ;
struct TYPE_3__ {int inherit; } ;
struct TYPE_4__ {TYPE_1__ attr; } ;
struct evsel {TYPE_2__ core; } ;
struct pyrf_evsel {struct evsel evsel; } ;
struct pyrf_cpu_map {struct perf_cpu_map* cpus; } ;
struct perf_thread_map {int dummy; } ;
struct perf_cpu_map {int dummy; } ;
typedef int PyObject ;


 int PyArg_ParseTupleAndKeywords (int *,int *,char*,char**,int **,int **,int*,int*) ;
 int PyErr_SetFromErrno (int ) ;
 int PyExc_OSError ;
 int Py_INCREF (int *) ;
 int * Py_None ;
 scalar_t__ evsel__open (struct evsel*,struct perf_cpu_map*,struct perf_thread_map*) ;

__attribute__((used)) static PyObject *pyrf_evsel__open(struct pyrf_evsel *pevsel,
      PyObject *args, PyObject *kwargs)
{
 struct evsel *evsel = &pevsel->evsel;
 struct perf_cpu_map *cpus = ((void*)0);
 struct perf_thread_map *threads = ((void*)0);
 PyObject *pcpus = ((void*)0), *pthreads = ((void*)0);
 int group = 0, inherit = 0;
 static char *kwlist[] = { "cpus", "threads", "group", "inherit", ((void*)0) };

 if (!PyArg_ParseTupleAndKeywords(args, kwargs, "|OOii", kwlist,
      &pcpus, &pthreads, &group, &inherit))
  return ((void*)0);

 if (pthreads != ((void*)0))
  threads = ((struct pyrf_thread_map *)pthreads)->threads;

 if (pcpus != ((void*)0))
  cpus = ((struct pyrf_cpu_map *)pcpus)->cpus;

 evsel->core.attr.inherit = inherit;




 if (evsel__open(evsel, cpus, threads) < 0) {
  PyErr_SetFromErrno(PyExc_OSError);
  return ((void*)0);
 }

 Py_INCREF(Py_None);
 return Py_None;
}
