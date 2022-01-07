
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_session {int machines; } ;


 int machines__destroy_kernel_maps (int *) ;

__attribute__((used)) static void perf_session__destroy_kernel_maps(struct perf_session *session)
{
 machines__destroy_kernel_maps(&session->machines);
}
