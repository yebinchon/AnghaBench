
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_header {int dummy; } ;
struct perf_session {int repipe; int data; struct perf_header header; } ;
struct perf_pipe_file_header {int dummy; } ;


 int EINVAL ;
 int perf_data__fd (int ) ;
 scalar_t__ perf_file_header__read_pipe (struct perf_pipe_file_header*,struct perf_header*,int ,int ) ;
 int pr_debug (char*) ;

__attribute__((used)) static int perf_header__read_pipe(struct perf_session *session)
{
 struct perf_header *header = &session->header;
 struct perf_pipe_file_header f_header;

 if (perf_file_header__read_pipe(&f_header, header,
     perf_data__fd(session->data),
     session->repipe) < 0) {
  pr_debug("incompatible file format\n");
  return -EINVAL;
 }

 return 0;
}
