
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_session {int dummy; } ;


 int perf_c2c__hists_fprintf (int ,struct perf_session*) ;
 int stdout ;
 scalar_t__ use_browser ;

__attribute__((used)) static void perf_c2c_display(struct perf_session *session)
{
 use_browser = 0;
 perf_c2c__hists_fprintf(stdout, session);
}
