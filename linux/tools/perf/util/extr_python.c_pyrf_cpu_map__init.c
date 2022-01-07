
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pyrf_cpu_map {int * cpus; } ;
typedef int PyObject ;


 int PyArg_ParseTupleAndKeywords (int *,int *,char*,char**,char**) ;
 int * perf_cpu_map__new (char*) ;

__attribute__((used)) static int pyrf_cpu_map__init(struct pyrf_cpu_map *pcpus,
         PyObject *args, PyObject *kwargs)
{
 static char *kwlist[] = { "cpustr", ((void*)0) };
 char *cpustr = ((void*)0);

 if (!PyArg_ParseTupleAndKeywords(args, kwargs, "|s",
      kwlist, &cpustr))
  return -1;

 pcpus->cpus = perf_cpu_map__new(cpustr);
 if (pcpus->cpus == ((void*)0))
  return -1;
 return 0;
}
