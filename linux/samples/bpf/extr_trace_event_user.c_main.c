
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rlimit {int member_1; int member_0; } ;
typedef int filename ;


 int RLIMIT_MEMLOCK ;
 int RLIM_INFINITY ;
 int SIGINT ;
 int SIGTERM ;
 char* bpf_log_buf ;
 scalar_t__ fork () ;
 int int_exit (int ) ;
 scalar_t__ load_bpf_file (char*) ;
 scalar_t__ load_kallsyms () ;
 int printf (char*,...) ;
 int read_trace_pipe () ;
 int setrlimit (int ,struct rlimit*) ;
 int signal (int ,int (*) (int )) ;
 int snprintf (char*,int,char*,char*) ;
 int test_bpf_perf_event () ;

int main(int argc, char **argv)
{
 struct rlimit r = {RLIM_INFINITY, RLIM_INFINITY};
 char filename[256];

 snprintf(filename, sizeof(filename), "%s_kern.o", argv[0]);
 setrlimit(RLIMIT_MEMLOCK, &r);

 signal(SIGINT, int_exit);
 signal(SIGTERM, int_exit);

 if (load_kallsyms()) {
  printf("failed to process /proc/kallsyms\n");
  return 1;
 }

 if (load_bpf_file(filename)) {
  printf("%s", bpf_log_buf);
  return 2;
 }

 if (fork() == 0) {
  read_trace_pipe();
  return 0;
 }
 test_bpf_perf_event();
 int_exit(0);
 return 0;
}
