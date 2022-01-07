
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_session {int dummy; } ;
typedef int FILE ;


 int fprintf (int *,char*) ;
 int perf_header__fprintf_info (struct perf_session*,int *,int) ;

void perf_session__fprintf_info(struct perf_session *session, FILE *fp,
    bool full)
{
 if (session == ((void*)0) || fp == ((void*)0))
  return;

 fprintf(fp, "# ========\n");
 perf_header__fprintf_info(session, fp, full);
 fprintf(fp, "# ========\n#\n");
}
