
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int host; } ;
struct perf_session {TYPE_1__ machines; } ;


 int machine__create_kernel_maps (int *) ;
 int machines__create_guest_kernel_maps (TYPE_1__*) ;

int perf_session__create_kernel_maps(struct perf_session *session)
{
 int ret = machine__create_kernel_maps(&session->machines.host);

 if (ret >= 0)
  ret = machines__create_guest_kernel_maps(&session->machines);
 return ret;
}
