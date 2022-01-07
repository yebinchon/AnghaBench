
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pyrf_thread_map {int * threads; } ;
typedef int PyObject ;


 int PyArg_ParseTupleAndKeywords (int *,int *,char*,char**,int*,int*,int*) ;
 int UINT_MAX ;
 int * thread_map__new (int,int,int) ;

__attribute__((used)) static int pyrf_thread_map__init(struct pyrf_thread_map *pthreads,
     PyObject *args, PyObject *kwargs)
{
 static char *kwlist[] = { "pid", "tid", "uid", ((void*)0) };
 int pid = -1, tid = -1, uid = UINT_MAX;

 if (!PyArg_ParseTupleAndKeywords(args, kwargs, "|iii",
      kwlist, &pid, &tid, &uid))
  return -1;

 pthreads->threads = thread_map__new(pid, tid, uid);
 if (pthreads->threads == ((void*)0))
  return -1;
 return 0;
}
