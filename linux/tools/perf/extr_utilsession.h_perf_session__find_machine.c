
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_session {int machines; } ;
struct machine {int dummy; } ;
typedef int pid_t ;


 struct machine* machines__find (int *,int ) ;

__attribute__((used)) static inline
struct machine *perf_session__find_machine(struct perf_session *session, pid_t pid)
{
 return machines__find(&session->machines, pid);
}
