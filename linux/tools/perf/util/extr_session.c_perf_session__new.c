
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct perf_tool {int ordered_events; scalar_t__ ordering_requires_timestamps; } ;
struct TYPE_5__ {int * env; int single_address_space; } ;
struct TYPE_6__ {TYPE_2__ host; } ;
struct TYPE_4__ {int env; } ;
struct perf_session {int repipe; int evlist; TYPE_3__ machines; struct perf_data* data; TYPE_1__ header; int ordered_events; int auxtrace_index; struct perf_tool* tool; } ;
struct perf_data {int is_pipe; scalar_t__ is_dir; } ;


 int ENOMEM ;
 struct perf_session* ERR_PTR (int) ;
 int INIT_LIST_HEAD (int *) ;
 int dump_printf (char*) ;
 int machines__init (TYPE_3__*) ;
 int ordered_events__deliver_event ;
 int ordered_events__init (int *,int ,int *) ;
 scalar_t__ perf_data__is_read (struct perf_data*) ;
 scalar_t__ perf_data__is_write (struct perf_data*) ;
 int perf_data__open (struct perf_data*) ;
 int perf_data__open_dir (struct perf_data*) ;
 int perf_env ;
 int perf_env__init (int *) ;
 int perf_env__single_address_space (int *) ;
 int perf_evlist__init_trace_event_sample_raw (int ) ;
 int perf_evlist__sample_id_all (int ) ;
 scalar_t__ perf_session__create_kernel_maps (struct perf_session*) ;
 int perf_session__delete (struct perf_session*) ;
 int perf_session__open (struct perf_session*) ;
 int perf_session__set_comm_exec (struct perf_session*) ;
 int perf_session__set_id_hdr_size (struct perf_session*) ;
 int pr_warning (char*) ;
 struct perf_session* zalloc (int) ;

struct perf_session *perf_session__new(struct perf_data *data,
           bool repipe, struct perf_tool *tool)
{
 int ret = -ENOMEM;
 struct perf_session *session = zalloc(sizeof(*session));

 if (!session)
  goto out;

 session->repipe = repipe;
 session->tool = tool;
 INIT_LIST_HEAD(&session->auxtrace_index);
 machines__init(&session->machines);
 ordered_events__init(&session->ordered_events,
        ordered_events__deliver_event, ((void*)0));

 perf_env__init(&session->header.env);
 if (data) {
  ret = perf_data__open(data);
  if (ret < 0)
   goto out_delete;

  session->data = data;

  if (perf_data__is_read(data)) {
   ret = perf_session__open(session);
   if (ret < 0)
    goto out_delete;





   if (!data->is_pipe) {
    perf_session__set_id_hdr_size(session);
    perf_session__set_comm_exec(session);
   }

   perf_evlist__init_trace_event_sample_raw(session->evlist);


   if (data->is_dir) {
    ret = perf_data__open_dir(data);
   if (ret)
    goto out_delete;
   }
  }
 } else {
  session->machines.host.env = &perf_env;
 }

 session->machines.host.single_address_space =
  perf_env__single_address_space(session->machines.host.env);

 if (!data || perf_data__is_write(data)) {




  if (perf_session__create_kernel_maps(session) < 0)
   pr_warning("Cannot read kernel map\n");
 }





 if ((!data || !data->is_pipe) && tool && tool->ordering_requires_timestamps &&
     tool->ordered_events && !perf_evlist__sample_id_all(session->evlist)) {
  dump_printf("WARNING: No sample_id_all support, falling back to unordered processing\n");
  tool->ordered_events = 0;
 }

 return session;

 out_delete:
 perf_session__delete(session);
 out:
 return ERR_PTR(ret);
}
