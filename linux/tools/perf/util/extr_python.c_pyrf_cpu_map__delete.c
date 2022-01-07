
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pyrf_cpu_map {int cpus; } ;
struct TYPE_2__ {int (* tp_free ) (int *) ;} ;
typedef int PyObject ;


 TYPE_1__* Py_TYPE (struct pyrf_cpu_map*) ;
 int perf_cpu_map__put (int ) ;
 int stub1 (int *) ;

__attribute__((used)) static void pyrf_cpu_map__delete(struct pyrf_cpu_map *pcpus)
{
 perf_cpu_map__put(pcpus->cpus);
 Py_TYPE(pcpus)->tp_free((PyObject*)pcpus);
}
