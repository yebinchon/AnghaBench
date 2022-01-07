
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_session {int evlist; int header; struct perf_data* data; } ;
struct perf_data {int dummy; } ;


 int HEADER_STAT ;
 scalar_t__ perf_data__is_pipe (struct perf_data*) ;
 int perf_evlist__valid_read_format (int ) ;
 int perf_evlist__valid_sample_id_all (int ) ;
 int perf_evlist__valid_sample_type (int ) ;
 scalar_t__ perf_header__has_feat (int *,int ) ;
 scalar_t__ perf_session__read_header (struct perf_session*) ;
 int pr_err (char*) ;

__attribute__((used)) static int perf_session__open(struct perf_session *session)
{
 struct perf_data *data = session->data;

 if (perf_session__read_header(session) < 0) {
  pr_err("incompatible file format (rerun with -v to learn more)\n");
  return -1;
 }

 if (perf_data__is_pipe(data))
  return 0;

 if (perf_header__has_feat(&session->header, HEADER_STAT))
  return 0;

 if (!perf_evlist__valid_sample_type(session->evlist)) {
  pr_err("non matching sample_type\n");
  return -1;
 }

 if (!perf_evlist__valid_sample_id_all(session->evlist)) {
  pr_err("non matching sample_id_all\n");
  return -1;
 }

 if (!perf_evlist__valid_read_format(session->evlist)) {
  pr_err("non matching read_format\n");
  return -1;
 }

 return 0;
}
