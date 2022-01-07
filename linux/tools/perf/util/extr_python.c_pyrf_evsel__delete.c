
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pyrf_evsel {int evsel; } ;
struct TYPE_2__ {int (* tp_free ) (int *) ;} ;
typedef int PyObject ;


 TYPE_1__* Py_TYPE (struct pyrf_evsel*) ;
 int perf_evsel__exit (int *) ;
 int stub1 (int *) ;

__attribute__((used)) static void pyrf_evsel__delete(struct pyrf_evsel *pevsel)
{
 perf_evsel__exit(&pevsel->evsel);
 Py_TYPE(pevsel)->tp_free((PyObject*)pevsel);
}
