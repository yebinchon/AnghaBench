
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_session {int machines; } ;


 int machines__set_comm_exec (int *,int) ;
 int perf_session__has_comm_exec (struct perf_session*) ;

__attribute__((used)) static void perf_session__set_comm_exec(struct perf_session *session)
{
 bool comm_exec = perf_session__has_comm_exec(session);

 machines__set_comm_exec(&session->machines, comm_exec);
}
