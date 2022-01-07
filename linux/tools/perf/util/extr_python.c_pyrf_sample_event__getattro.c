
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pyrf_event {int dummy; } ;
typedef int PyObject ;


 int * PyObject_GenericGetAttr (int *,int *) ;
 int * get_tracepoint_field (struct pyrf_event*,int *) ;
 scalar_t__ is_tracepoint (struct pyrf_event*) ;

__attribute__((used)) static PyObject*
pyrf_sample_event__getattro(struct pyrf_event *pevent, PyObject *attr_name)
{
 PyObject *obj = ((void*)0);

 if (is_tracepoint(pevent))
  obj = get_tracepoint_field(pevent, attr_name);

 return obj ?: PyObject_GenericGetAttr((PyObject *) pevent, attr_name);
}
