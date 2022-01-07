
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_sample {int dummy; } ;
struct evsel {int dummy; } ;
struct addr_location {int dummy; } ;
typedef int handler_name ;
typedef int PyObject ;


 int MAX_FIELDS ;
 int * PyTuple_New (int ) ;
 int PyTuple_SetItem (int *,int ,int *) ;
 int Py_DECREF (int *) ;
 int Py_FatalError (char*) ;
 int _PyTuple_Resize (int **,unsigned int) ;
 int call_object (int *,int *,char*) ;
 int * get_handler (char*) ;
 int * get_perf_sample_dict (struct perf_sample*,struct evsel*,struct addr_location*,int *) ;
 int * python_process_callchain (struct perf_sample*,struct evsel*,struct addr_location*) ;
 int snprintf (char*,int,char*,char*) ;

__attribute__((used)) static void python_process_general_event(struct perf_sample *sample,
      struct evsel *evsel,
      struct addr_location *al)
{
 PyObject *handler, *t, *dict, *callchain;
 static char handler_name[64];
 unsigned n = 0;

 snprintf(handler_name, sizeof(handler_name), "%s", "process_event");

 handler = get_handler(handler_name);
 if (!handler)
  return;





 t = PyTuple_New(MAX_FIELDS);
 if (!t)
  Py_FatalError("couldn't create Python tuple");


 callchain = python_process_callchain(sample, evsel, al);
 dict = get_perf_sample_dict(sample, evsel, al, callchain);

 PyTuple_SetItem(t, n++, dict);
 if (_PyTuple_Resize(&t, n) == -1)
  Py_FatalError("error resizing Python tuple");

 call_object(handler, t, handler_name);

 Py_DECREF(t);
}
