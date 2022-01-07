
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_event {int id; } ;
struct pyrf_evsel {int dummy; } ;
typedef int PyObject ;


 scalar_t__ IS_ERR (struct tep_event*) ;
 int PyArg_ParseTupleAndKeywords (int *,int *,char*,char**,char**,char**) ;
 int * _PyLong_FromLong (int) ;
 struct tep_event* trace_event__tp_format (char*,char*) ;

__attribute__((used)) static PyObject *pyrf__tracepoint(struct pyrf_evsel *pevsel,
      PyObject *args, PyObject *kwargs)
{
 struct tep_event *tp_format;
 static char *kwlist[] = { "sys", "name", ((void*)0) };
 char *sys = ((void*)0);
 char *name = ((void*)0);

 if (!PyArg_ParseTupleAndKeywords(args, kwargs, "|ss", kwlist,
      &sys, &name))
  return ((void*)0);

 tp_format = trace_event__tp_format(sys, name);
 if (IS_ERR(tp_format))
  return _PyLong_FromLong(-1);

 return _PyLong_FromLong(tp_format->id);
}
