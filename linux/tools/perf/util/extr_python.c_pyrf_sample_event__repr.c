
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pyrf_event {int dummy; } ;
typedef int PyObject ;


 int * PyErr_NoMemory () ;
 int * _PyUnicode_FromString (char*) ;
 scalar_t__ asprintf (char**,char*) ;
 int free (char*) ;

__attribute__((used)) static PyObject *pyrf_sample_event__repr(struct pyrf_event *pevent)
{
 PyObject *ret;
 char *s;

 if (asprintf(&s, "{ type: sample }") < 0) {
  ret = PyErr_NoMemory();
 } else {
  ret = _PyUnicode_FromString(s);
  free(s);
 }
 return ret;
}
