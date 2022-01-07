
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_session {int header; } ;
struct perf_data {int force; int mode; int path; } ;


 int HEADER_AUXTRACE ;
 scalar_t__ IS_ERR (struct perf_session*) ;
 int PERF_DATA_MODE_READ ;
 int PTR_ERR (struct perf_session*) ;
 int build_id__mark_dso_hit_ops ;
 int dso__skip_buildid ;
 scalar_t__ filename__fprintf_build_id (int ,int ) ;
 int input_name ;
 scalar_t__ perf_data__is_pipe (struct perf_data*) ;
 scalar_t__ perf_header__has_feat (int *,int ) ;
 int perf_session__delete (struct perf_session*) ;
 int perf_session__fprintf_dsos_buildid (struct perf_session*,int ,int ,int) ;
 struct perf_session* perf_session__new (struct perf_data*,int,int *) ;
 int perf_session__process_events (struct perf_session*) ;
 int stdout ;
 int symbol__elf_init () ;

__attribute__((used)) static int perf_session__list_build_ids(bool force, bool with_hits)
{
 struct perf_session *session;
 struct perf_data data = {
  .path = input_name,
  .mode = PERF_DATA_MODE_READ,
  .force = force,
 };

 symbol__elf_init();



 if (filename__fprintf_build_id(input_name, stdout) > 0)
  goto out;

 session = perf_session__new(&data, 0, &build_id__mark_dso_hit_ops);
 if (IS_ERR(session))
  return PTR_ERR(session);





 if (!perf_data__is_pipe(&data) &&
     perf_header__has_feat(&session->header, HEADER_AUXTRACE))
  with_hits = 0;





 if (with_hits || perf_data__is_pipe(&data))
  perf_session__process_events(session);

 perf_session__fprintf_dsos_buildid(session, stdout, dso__skip_buildid, with_hits);
 perf_session__delete(session);
out:
 return 0;
}
