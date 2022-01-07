
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_session {int dummy; } ;


 int __print_slab_result (int *,struct perf_session*,int ,int) ;
 scalar_t__ alloc_flag ;
 int alloc_lines ;
 scalar_t__ caller_flag ;
 int caller_lines ;
 int print_slab_summary () ;
 int root_alloc_sorted ;
 int root_caller_sorted ;

__attribute__((used)) static void print_slab_result(struct perf_session *session)
{
 if (caller_flag)
  __print_slab_result(&root_caller_sorted, session, caller_lines, 1);
 if (alloc_flag)
  __print_slab_result(&root_alloc_sorted, session, alloc_lines, 0);
 print_slab_summary();
}
