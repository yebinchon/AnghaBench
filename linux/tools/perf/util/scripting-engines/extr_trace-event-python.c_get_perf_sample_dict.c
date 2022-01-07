
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct perf_sample {int raw_size; scalar_t__ raw_data; int transaction; int weight; int addr; int phys_addr; int period; int time; int ip; int cpu; int tid; int pid; } ;
struct TYPE_5__ {int attr; } ;
struct evsel {TYPE_1__ core; } ;
struct addr_location {int thread; TYPE_4__* sym; TYPE_3__* map; } ;
struct TYPE_8__ {int name; } ;
struct TYPE_7__ {TYPE_2__* dso; } ;
struct TYPE_6__ {int name; } ;
typedef int PyObject ;


 int * PyDict_New () ;
 int * PyLong_FromUnsignedLongLong (int ) ;
 int Py_FatalError (char*) ;
 int * _PyBytes_FromStringAndSize (char const*,int) ;
 int * _PyLong_FromLong (int ) ;
 int * _PyUnicode_FromString (int ) ;
 int perf_evsel__name (struct evsel*) ;
 int pydict_set_item_string_decref (int *,char*,int *) ;
 int * python_process_brstack (struct perf_sample*,int ) ;
 int * python_process_brstacksym (struct perf_sample*,int ) ;
 int set_regs_in_dict (int *,struct perf_sample*,struct evsel*) ;
 int set_sample_datasrc_in_dict (int *,struct perf_sample*) ;
 int set_sample_read_in_dict (int *,struct perf_sample*,struct evsel*) ;
 int thread__comm_str (int ) ;

__attribute__((used)) static PyObject *get_perf_sample_dict(struct perf_sample *sample,
      struct evsel *evsel,
      struct addr_location *al,
      PyObject *callchain)
{
 PyObject *dict, *dict_sample, *brstack, *brstacksym;

 dict = PyDict_New();
 if (!dict)
  Py_FatalError("couldn't create Python dictionary");

 dict_sample = PyDict_New();
 if (!dict_sample)
  Py_FatalError("couldn't create Python dictionary");

 pydict_set_item_string_decref(dict, "ev_name", _PyUnicode_FromString(perf_evsel__name(evsel)));
 pydict_set_item_string_decref(dict, "attr", _PyBytes_FromStringAndSize((const char *)&evsel->core.attr, sizeof(evsel->core.attr)));

 pydict_set_item_string_decref(dict_sample, "pid",
   _PyLong_FromLong(sample->pid));
 pydict_set_item_string_decref(dict_sample, "tid",
   _PyLong_FromLong(sample->tid));
 pydict_set_item_string_decref(dict_sample, "cpu",
   _PyLong_FromLong(sample->cpu));
 pydict_set_item_string_decref(dict_sample, "ip",
   PyLong_FromUnsignedLongLong(sample->ip));
 pydict_set_item_string_decref(dict_sample, "time",
   PyLong_FromUnsignedLongLong(sample->time));
 pydict_set_item_string_decref(dict_sample, "period",
   PyLong_FromUnsignedLongLong(sample->period));
 pydict_set_item_string_decref(dict_sample, "phys_addr",
   PyLong_FromUnsignedLongLong(sample->phys_addr));
 pydict_set_item_string_decref(dict_sample, "addr",
   PyLong_FromUnsignedLongLong(sample->addr));
 set_sample_read_in_dict(dict_sample, sample, evsel);
 pydict_set_item_string_decref(dict_sample, "weight",
   PyLong_FromUnsignedLongLong(sample->weight));
 pydict_set_item_string_decref(dict_sample, "transaction",
   PyLong_FromUnsignedLongLong(sample->transaction));
 set_sample_datasrc_in_dict(dict_sample, sample);
 pydict_set_item_string_decref(dict, "sample", dict_sample);

 pydict_set_item_string_decref(dict, "raw_buf", _PyBytes_FromStringAndSize(
   (const char *)sample->raw_data, sample->raw_size));
 pydict_set_item_string_decref(dict, "comm",
   _PyUnicode_FromString(thread__comm_str(al->thread)));
 if (al->map) {
  pydict_set_item_string_decref(dict, "dso",
   _PyUnicode_FromString(al->map->dso->name));
 }
 if (al->sym) {
  pydict_set_item_string_decref(dict, "symbol",
   _PyUnicode_FromString(al->sym->name));
 }

 pydict_set_item_string_decref(dict, "callchain", callchain);

 brstack = python_process_brstack(sample, al->thread);
 pydict_set_item_string_decref(dict, "brstack", brstack);

 brstacksym = python_process_brstacksym(sample, al->thread);
 pydict_set_item_string_decref(dict, "brstacksym", brstacksym);

 set_regs_in_dict(dict, sample, evsel);

 return dict;
}
