
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_session {int machines; } ;
typedef int FILE ;


 size_t machines__fprintf_dsos_buildid (int *,int *,int (*) (struct dso*,int),int) ;

size_t perf_session__fprintf_dsos_buildid(struct perf_session *session, FILE *fp,
       bool (skip)(struct dso *dso, int parm), int parm)
{
 return machines__fprintf_dsos_buildid(&session->machines, fp, skip, parm);
}
