
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {int dummy; } ;
struct TYPE_2__ {int host; } ;
struct perf_session {TYPE_1__ machines; } ;
typedef int pid_t ;


 struct thread* machine__findnew_thread (int *,int,int ) ;

struct thread *perf_session__findnew(struct perf_session *session, pid_t pid)
{
 return machine__findnew_thread(&session->machines.host, -1, pid);
}
