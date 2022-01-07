
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pyrf_evlist {int evlist; } ;
struct TYPE_2__ {int (* tp_free ) (int *) ;} ;
typedef int PyObject ;


 TYPE_1__* Py_TYPE (struct pyrf_evlist*) ;
 int evlist__exit (int *) ;
 int stub1 (int *) ;

__attribute__((used)) static void pyrf_evlist__delete(struct pyrf_evlist *pevlist)
{
 evlist__exit(&pevlist->evlist);
 Py_TYPE(pevlist)->tp_free((PyObject*)pevlist);
}
