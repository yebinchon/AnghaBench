
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u64 ;
struct thread {int dummy; } ;
struct perf_sample {int cpumode; struct branch_stack* branch_stack; } ;
struct branch_stack {size_t nr; TYPE_1__* entries; } ;
struct addr_location {int sym; } ;
typedef int bf ;
struct TYPE_4__ {scalar_t__ abort; scalar_t__ in_tx; } ;
struct TYPE_3__ {TYPE_2__ flags; int to; int from; } ;
typedef int PyObject ;


 int * PyDict_New () ;
 int PyList_Append (int *,int *) ;
 int * PyList_New (int ) ;
 int Py_DECREF (int *) ;
 int Py_FatalError (char*) ;
 int _PyUnicode_FromString (char*) ;
 int get_br_mspred (TYPE_2__*,char*,int) ;
 int get_symoff (int ,struct addr_location*,int,char*,int) ;
 int pydict_set_item_string_decref (int *,char*,int ) ;
 int thread__find_symbol_fb (struct thread*,int ,int ,struct addr_location*) ;

__attribute__((used)) static PyObject *python_process_brstacksym(struct perf_sample *sample,
        struct thread *thread)
{
 struct branch_stack *br = sample->branch_stack;
 PyObject *pylist;
 u64 i;
 char bf[512];
 struct addr_location al;

 pylist = PyList_New(0);
 if (!pylist)
  Py_FatalError("couldn't create Python list");

 if (!(br && br->nr))
  goto exit;

 for (i = 0; i < br->nr; i++) {
  PyObject *pyelem;

  pyelem = PyDict_New();
  if (!pyelem)
   Py_FatalError("couldn't create Python dictionary");

  thread__find_symbol_fb(thread, sample->cpumode,
           br->entries[i].from, &al);
  get_symoff(al.sym, &al, 1, bf, sizeof(bf));
  pydict_set_item_string_decref(pyelem, "from",
           _PyUnicode_FromString(bf));

  thread__find_symbol_fb(thread, sample->cpumode,
           br->entries[i].to, &al);
  get_symoff(al.sym, &al, 1, bf, sizeof(bf));
  pydict_set_item_string_decref(pyelem, "to",
           _PyUnicode_FromString(bf));

  get_br_mspred(&br->entries[i].flags, bf, sizeof(bf));
  pydict_set_item_string_decref(pyelem, "pred",
           _PyUnicode_FromString(bf));

  if (br->entries[i].flags.in_tx) {
   pydict_set_item_string_decref(pyelem, "in_tx",
           _PyUnicode_FromString("X"));
  } else {
   pydict_set_item_string_decref(pyelem, "in_tx",
           _PyUnicode_FromString("-"));
  }

  if (br->entries[i].flags.abort) {
   pydict_set_item_string_decref(pyelem, "abort",
           _PyUnicode_FromString("A"));
  } else {
   pydict_set_item_string_decref(pyelem, "abort",
           _PyUnicode_FromString("-"));
  }

  PyList_Append(pylist, pyelem);
  Py_DECREF(pyelem);
 }

exit:
 return pylist;
}
