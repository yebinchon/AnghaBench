
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_session {int dummy; } ;


 scalar_t__ kmem_page ;
 scalar_t__ kmem_slab ;
 int print_page_result (struct perf_session*) ;
 int print_slab_result (struct perf_session*) ;

__attribute__((used)) static void print_result(struct perf_session *session)
{
 if (kmem_slab)
  print_slab_result(session);
 if (kmem_page)
  print_page_result(session);
}
