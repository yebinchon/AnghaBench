
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ size; } ;
union perf_event {TYPE_2__ header; } ;
typedef size_t u64 ;
struct perf_tool {scalar_t__ show_feat_hdr; } ;
struct perf_session {int header; struct perf_tool* tool; } ;
struct TYPE_4__ {int type; } ;
struct perf_record_header_feature {size_t feat_id; scalar_t__ data; TYPE_1__ header; } ;
struct feat_fd {int * ph; scalar_t__ size; void* buf; int fd; } ;
struct TYPE_6__ {char* name; int (* print ) (struct feat_fd*,int ) ;int full_only; scalar_t__ (* process ) (struct feat_fd*,int *) ;} ;


 size_t HEADER_LAST_FEATURE ;
 size_t HEADER_RESERVED ;
 int PERF_RECORD_HEADER_MAX ;
 scalar_t__ SHOW_FEAT_HEADER_FULL_INFO ;
 TYPE_3__* feat_ops ;
 int fprintf (int ,char*,char*) ;
 int pr_warning (char*,int) ;
 int stdout ;
 scalar_t__ stub1 (struct feat_fd*,int *) ;
 int stub2 (struct feat_fd*,int ) ;

int perf_event__process_feature(struct perf_session *session,
    union perf_event *event)
{
 struct perf_tool *tool = session->tool;
 struct feat_fd ff = { .fd = 0 };
 struct perf_record_header_feature *fe = (struct perf_record_header_feature *)event;
 int type = fe->header.type;
 u64 feat = fe->feat_id;

 if (type < 0 || type >= PERF_RECORD_HEADER_MAX) {
  pr_warning("invalid record type %d in pipe-mode\n", type);
  return 0;
 }
 if (feat == HEADER_RESERVED || feat >= HEADER_LAST_FEATURE) {
  pr_warning("invalid record type %d in pipe-mode\n", type);
  return -1;
 }

 if (!feat_ops[feat].process)
  return 0;

 ff.buf = (void *)fe->data;
 ff.size = event->header.size - sizeof(*fe);
 ff.ph = &session->header;

 if (feat_ops[feat].process(&ff, ((void*)0)))
  return -1;

 if (!feat_ops[feat].print || !tool->show_feat_hdr)
  return 0;

 if (!feat_ops[feat].full_only ||
     tool->show_feat_hdr >= SHOW_FEAT_HEADER_FULL_INFO) {
  feat_ops[feat].print(&ff, stdout);
 } else {
  fprintf(stdout, "# %s info available, use -I to display\n",
   feat_ops[feat].name);
 }

 return 0;
}
