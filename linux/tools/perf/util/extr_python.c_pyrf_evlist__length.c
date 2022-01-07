
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nr_entries; } ;
struct TYPE_4__ {TYPE_1__ core; } ;
struct pyrf_evlist {TYPE_2__ evlist; } ;
typedef int Py_ssize_t ;
typedef int PyObject ;



__attribute__((used)) static Py_ssize_t pyrf_evlist__length(PyObject *obj)
{
 struct pyrf_evlist *pevlist = (void *)obj;

 return pevlist->evlist.core.nr_entries;
}
