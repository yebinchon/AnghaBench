
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pyrf_thread_map {TYPE_1__* threads; } ;
struct TYPE_2__ {int nr; } ;
typedef int Py_ssize_t ;
typedef int PyObject ;



__attribute__((used)) static Py_ssize_t pyrf_thread_map__length(PyObject *obj)
{
 struct pyrf_thread_map *pthreads = (void *)obj;

 return pthreads->threads->nr;
}
