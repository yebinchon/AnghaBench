
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct perf_sample {int callchain; } ;
struct evsel {int dummy; } ;
struct callchain_cursor_node {scalar_t__ map; TYPE_1__* sym; int ip; } ;
struct addr_location {int thread; } ;
struct TYPE_4__ {int use_callchain; } ;
struct TYPE_3__ {int namelen; int name; int binding; int end; int start; } ;
typedef int PyObject ;


 int * PyDict_New () ;
 int PyList_Append (int *,int *) ;
 int * PyList_New (int ) ;
 int * PyLong_FromUnsignedLongLong (int ) ;
 int Py_DECREF (int *) ;
 int Py_FatalError (char*) ;
 int * _PyLong_FromLong (int ) ;
 int * _PyUnicode_FromString (char const*) ;
 int * _PyUnicode_FromStringAndSize (int ,int ) ;
 int callchain_cursor ;
 int callchain_cursor_advance (int *) ;
 int callchain_cursor_commit (int *) ;
 struct callchain_cursor_node* callchain_cursor_current (int *) ;
 char* get_dsoname (scalar_t__) ;
 int pr_err (char*) ;
 int pydict_set_item_string_decref (int *,char*,int *) ;
 int scripting_max_stack ;
 TYPE_2__ symbol_conf ;
 scalar_t__ thread__resolve_callchain (int ,int *,struct evsel*,struct perf_sample*,int *,int *,int ) ;

__attribute__((used)) static PyObject *python_process_callchain(struct perf_sample *sample,
      struct evsel *evsel,
      struct addr_location *al)
{
 PyObject *pylist;

 pylist = PyList_New(0);
 if (!pylist)
  Py_FatalError("couldn't create Python list");

 if (!symbol_conf.use_callchain || !sample->callchain)
  goto exit;

 if (thread__resolve_callchain(al->thread, &callchain_cursor, evsel,
          sample, ((void*)0), ((void*)0),
          scripting_max_stack) != 0) {
  pr_err("Failed to resolve callchain. Skipping\n");
  goto exit;
 }
 callchain_cursor_commit(&callchain_cursor);


 while (1) {
  PyObject *pyelem;
  struct callchain_cursor_node *node;
  node = callchain_cursor_current(&callchain_cursor);
  if (!node)
   break;

  pyelem = PyDict_New();
  if (!pyelem)
   Py_FatalError("couldn't create Python dictionary");


  pydict_set_item_string_decref(pyelem, "ip",
    PyLong_FromUnsignedLongLong(node->ip));

  if (node->sym) {
   PyObject *pysym = PyDict_New();
   if (!pysym)
    Py_FatalError("couldn't create Python dictionary");
   pydict_set_item_string_decref(pysym, "start",
     PyLong_FromUnsignedLongLong(node->sym->start));
   pydict_set_item_string_decref(pysym, "end",
     PyLong_FromUnsignedLongLong(node->sym->end));
   pydict_set_item_string_decref(pysym, "binding",
     _PyLong_FromLong(node->sym->binding));
   pydict_set_item_string_decref(pysym, "name",
     _PyUnicode_FromStringAndSize(node->sym->name,
       node->sym->namelen));
   pydict_set_item_string_decref(pyelem, "sym", pysym);
  }

  if (node->map) {
   const char *dsoname = get_dsoname(node->map);

   pydict_set_item_string_decref(pyelem, "dso",
     _PyUnicode_FromString(dsoname));
  }

  callchain_cursor_advance(&callchain_cursor);
  PyList_Append(pylist, pyelem);
  Py_DECREF(pyelem);
 }

exit:
 return pylist;
}
