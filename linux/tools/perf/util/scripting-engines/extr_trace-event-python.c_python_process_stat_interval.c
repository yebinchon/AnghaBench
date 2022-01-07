
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int PyObject ;


 int MAX_FIELDS ;
 int * PyTuple_New (int ) ;
 int Py_DECREF (int *) ;
 int Py_FatalError (char*) ;
 int _PyTuple_Resize (int **,int) ;
 int call_object (int *,int *,char const*) ;
 int * get_handler (char const*) ;
 int pr_debug (char*,char const*) ;
 int tuple_set_u64 (int *,int ,int ) ;

__attribute__((used)) static void python_process_stat_interval(u64 tstamp)
{
 PyObject *handler, *t;
 static const char handler_name[] = "stat__interval";
 int n = 0;

 t = PyTuple_New(MAX_FIELDS);
 if (!t)
  Py_FatalError("couldn't create Python tuple");

 handler = get_handler(handler_name);
 if (!handler) {
  pr_debug("can't find python handler %s\n", handler_name);
  return;
 }

 tuple_set_u64(t, n++, tstamp);

 if (_PyTuple_Resize(&t, n) == -1)
  Py_FatalError("error resizing Python tuple");

 call_object(handler, t, handler_name);

 Py_DECREF(t);
}
