
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_session {int dummy; } ;
typedef int FILE ;


 int dso__missing_buildid_cache ;
 int perf_session__fprintf_dsos_buildid (struct perf_session*,int *,int ,int ) ;

__attribute__((used)) static int build_id_cache__fprintf_missing(struct perf_session *session, FILE *fp)
{
 perf_session__fprintf_dsos_buildid(session, fp, dso__missing_buildid_cache, 0);
 return 0;
}
