
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_session {TYPE_1__* evlist; int header; } ;
struct TYPE_2__ {int stats; } ;
typedef int FILE ;


 int HEADER_AUXTRACE ;
 scalar_t__ events_stats__fprintf (int *,int *) ;
 size_t fprintf (int *,char*,char const*) ;
 scalar_t__ perf_header__has_feat (int *,int ) ;

size_t perf_session__fprintf_nr_events(struct perf_session *session, FILE *fp)
{
 size_t ret;
 const char *msg = "";

 if (perf_header__has_feat(&session->header, HEADER_AUXTRACE))
  msg = " (excludes AUX area (e.g. instruction trace) decoded / synthesized events)";

 ret = fprintf(fp, "\nAggregated stats:%s\n", msg);

 ret += events_stats__fprintf(&session->evlist->stats, fp);
 return ret;
}
