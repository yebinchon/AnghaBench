
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_session {int machines; } ;
typedef int FILE ;


 size_t machines__fprintf_dsos (int *,int *) ;

size_t perf_session__fprintf_dsos(struct perf_session *session, FILE *fp)
{
 return machines__fprintf_dsos(&session->machines, fp);
}
