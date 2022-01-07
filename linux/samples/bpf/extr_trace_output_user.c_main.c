
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_buffer_opts {int sample_cb; } ;
struct perf_buffer {int dummy; } ;
typedef int filename ;
typedef int FILE ;


 scalar_t__ MAX_CNT ;
 int SIGINT ;
 char* bpf_log_buf ;
 scalar_t__ cnt ;
 int kill (int ,int ) ;
 int libbpf_get_error (struct perf_buffer*) ;
 scalar_t__ load_bpf_file (char*) ;
 int * map_fd ;
 struct perf_buffer* perf_buffer__new (int ,int,struct perf_buffer_opts*) ;
 int perf_buffer__poll (struct perf_buffer*,int) ;
 int * popen (char*,char*) ;
 int print_bpf_output ;
 int printf (char*,...) ;
 int snprintf (char*,int,char*,char*) ;
 int start_time ;
 int time_get_ns () ;

int main(int argc, char **argv)
{
 struct perf_buffer_opts pb_opts = {};
 struct perf_buffer *pb;
 char filename[256];
 FILE *f;
 int ret;

 snprintf(filename, sizeof(filename), "%s_kern.o", argv[0]);

 if (load_bpf_file(filename)) {
  printf("%s", bpf_log_buf);
  return 1;
 }

 pb_opts.sample_cb = print_bpf_output;
 pb = perf_buffer__new(map_fd[0], 8, &pb_opts);
 ret = libbpf_get_error(pb);
 if (ret) {
  printf("failed to setup perf_buffer: %d\n", ret);
  return 1;
 }

 f = popen("taskset 1 dd if=/dev/zero of=/dev/null", "r");
 (void) f;

 start_time = time_get_ns();
 while ((ret = perf_buffer__poll(pb, 1000)) >= 0 && cnt < MAX_CNT) {
 }
 kill(0, SIGINT);
 return ret;
}
