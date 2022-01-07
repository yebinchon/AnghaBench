
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct perf_counts_values {int run; int ena; int val; } ;
struct evsel {int dummy; } ;
typedef int handler_name ;
typedef int PyObject ;


 int MAX_FIELDS ;
 int * PyTuple_New (int ) ;
 int PyTuple_SetItem (int *,int ,int ) ;
 int Py_DECREF (int *) ;
 int Py_FatalError (char*) ;
 int _PyLong_FromLong (int) ;
 int _PyTuple_Resize (int **,int) ;
 int call_object (int *,int *,char*) ;
 int * get_handler (char*) ;
 int get_handler_name (char*,int,struct evsel*) ;
 int pr_debug (char*,char*) ;
 int tuple_set_u64 (int *,int ,int ) ;

__attribute__((used)) static void
process_stat(struct evsel *counter, int cpu, int thread, u64 tstamp,
      struct perf_counts_values *count)
{
 PyObject *handler, *t;
 static char handler_name[256];
 int n = 0;

 t = PyTuple_New(MAX_FIELDS);
 if (!t)
  Py_FatalError("couldn't create Python tuple");

 get_handler_name(handler_name, sizeof(handler_name),
    counter);

 handler = get_handler(handler_name);
 if (!handler) {
  pr_debug("can't find python handler %s\n", handler_name);
  return;
 }

 PyTuple_SetItem(t, n++, _PyLong_FromLong(cpu));
 PyTuple_SetItem(t, n++, _PyLong_FromLong(thread));

 tuple_set_u64(t, n++, tstamp);
 tuple_set_u64(t, n++, count->val);
 tuple_set_u64(t, n++, count->ena);
 tuple_set_u64(t, n++, count->run);

 if (_PyTuple_Resize(&t, n) == -1)
  Py_FatalError("error resizing Python tuple");

 call_object(handler, t, handler_name);

 Py_DECREF(t);
}
