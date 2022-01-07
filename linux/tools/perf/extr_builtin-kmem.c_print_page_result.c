
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_session {int dummy; } ;


 int __print_page_alloc_result (struct perf_session*,int ) ;
 int __print_page_caller_result (struct perf_session*,int ) ;
 scalar_t__ alloc_flag ;
 int alloc_lines ;
 scalar_t__ caller_flag ;
 int caller_lines ;
 int print_gfp_flags () ;
 int print_page_summary () ;

__attribute__((used)) static void print_page_result(struct perf_session *session)
{
 if (caller_flag || alloc_flag)
  print_gfp_flags();
 if (caller_flag)
  __print_page_caller_result(session, caller_lines);
 if (alloc_flag)
  __print_page_alloc_result(session, alloc_lines);
 print_page_summary();
}
