
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pyrf_thread_map {int threads; } ;
struct TYPE_2__ {int (* tp_free ) (int *) ;} ;
typedef int PyObject ;


 TYPE_1__* Py_TYPE (struct pyrf_thread_map*) ;
 int perf_thread_map__put (int ) ;
 int stub1 (int *) ;

__attribute__((used)) static void pyrf_thread_map__delete(struct pyrf_thread_map *pthreads)
{
 perf_thread_map__put(pthreads->threads);
 Py_TYPE(pthreads)->tp_free((PyObject*)pthreads);
}
