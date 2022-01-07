
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tid; int pid; } ;
struct TYPE_4__ {TYPE_1__ read; } ;
struct pyrf_event {TYPE_2__ event; } ;
typedef int PyObject ;


 int * _PyUnicode_FromFormat (char*,int ,int ) ;

__attribute__((used)) static PyObject *pyrf_read_event__repr(struct pyrf_event *pevent)
{
 return _PyUnicode_FromFormat("{ type: read, pid: %u, tid: %u }",
       pevent->event.read.pid,
       pevent->event.read.tid);




}
