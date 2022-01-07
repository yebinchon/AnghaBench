
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_sample {int user_regs; int intr_regs; } ;
struct perf_event_attr {int sample_regs_user; int sample_regs_intr; } ;
struct TYPE_2__ {struct perf_event_attr attr; } ;
struct evsel {TYPE_1__ core; } ;
typedef int bf ;
typedef int PyObject ;


 int _PyUnicode_FromString (char*) ;
 int pydict_set_item_string_decref (int *,char*,int ) ;
 int regs_map (int *,int ,char*,int) ;

__attribute__((used)) static void set_regs_in_dict(PyObject *dict,
        struct perf_sample *sample,
        struct evsel *evsel)
{
 struct perf_event_attr *attr = &evsel->core.attr;
 char bf[512];

 regs_map(&sample->intr_regs, attr->sample_regs_intr, bf, sizeof(bf));

 pydict_set_item_string_decref(dict, "iregs",
   _PyUnicode_FromString(bf));

 regs_map(&sample->user_regs, attr->sample_regs_user, bf, sizeof(bf));

 pydict_set_item_string_decref(dict, "uregs",
   _PyUnicode_FromString(bf));
}
