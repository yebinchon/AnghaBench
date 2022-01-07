
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_session {int machines; } ;


 int machines__for_each_thread (int *,int ,int *) ;
 int perf_session__flush_thread_stack ;

__attribute__((used)) static int perf_session__flush_thread_stacks(struct perf_session *session)
{
 return machines__for_each_thread(&session->machines,
      perf_session__flush_thread_stack,
      ((void*)0));
}
