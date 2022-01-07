
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct perf_session {int evlist; } ;
struct perf_data {int dummy; } ;
struct machine {int dummy; } ;
struct jit_buf_desc {int bytes_written; int sample_type; struct machine* machine; struct perf_data* output; struct perf_session* session; } ;
struct TYPE_3__ {int sample_type; } ;
struct TYPE_4__ {TYPE_1__ attr; } ;
struct evsel {TYPE_2__ core; } ;
typedef int pid_t ;
typedef int jd ;


 struct evsel* evlist__first (int ) ;
 scalar_t__ jit_detect (char*,int ) ;
 int jit_inject (struct jit_buf_desc*,char*) ;
 int memset (struct jit_buf_desc*,int ,int) ;

int
jit_process(struct perf_session *session,
     struct perf_data *output,
     struct machine *machine,
     char *filename,
     pid_t pid,
     u64 *nbytes)
{
 struct evsel *first;
 struct jit_buf_desc jd;
 int ret;




 if (jit_detect(filename, pid))
  return 0;

 memset(&jd, 0, sizeof(jd));

 jd.session = session;
 jd.output = output;
 jd.machine = machine;





 first = evlist__first(session->evlist);
 jd.sample_type = first->core.attr.sample_type;

 *nbytes = 0;

 ret = jit_inject(&jd, filename);
 if (!ret) {
  *nbytes = jd.bytes_written;
  ret = 1;
 }

 return ret;
}
