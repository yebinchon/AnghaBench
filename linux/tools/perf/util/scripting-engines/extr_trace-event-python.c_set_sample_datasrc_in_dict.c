
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_sample {int data_src; } ;
struct TYPE_2__ {int val; } ;
struct mem_info {TYPE_1__ data_src; } ;
typedef int PyObject ;


 int PyLong_FromUnsignedLongLong (int ) ;
 int _PyUnicode_FromString (char*) ;
 int perf_script__meminfo_scnprintf (char*,int,struct mem_info*) ;
 int pydict_set_item_string_decref (int *,char*,int ) ;

__attribute__((used)) static void set_sample_datasrc_in_dict(PyObject *dict,
           struct perf_sample *sample)
{
 struct mem_info mi = { .data_src.val = sample->data_src };
 char decode[100];

 pydict_set_item_string_decref(dict, "datasrc",
   PyLong_FromUnsignedLongLong(sample->data_src));

 perf_script__meminfo_scnprintf(decode, 100, &mi);

 pydict_set_item_string_decref(dict, "datasrc_decode",
   _PyUnicode_FromString(decode));
}
