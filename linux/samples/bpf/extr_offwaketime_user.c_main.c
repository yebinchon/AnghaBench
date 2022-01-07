
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
 int atoi (char*) ;
 char* bpf_log_buf ;
 int int_exit ;
 scalar_t__ load_bpf_file (char*) ;
 scalar_t__ load_kallsyms () ;
 int * map_fd ;
 int print_stacks (int ) ;
 int printf (char*,...) ;
 int setrlimit (int ,struct rlimit*) ;
 int signal (int ,int ) ;
 int sleep (int) ;
 int snprintf (char*,int,char*,char*) ;

int main(int argc, char **argv)
{
 struct rlimit r = {RLIM_INFINITY, RLIM_INFINITY};
 char filename[256];
 int delay = 1;

 snprintf(filename, sizeof(filename), "%s_kern.o", argv[0]);
 setrlimit(RLIMIT_MEMLOCK, &r);

 signal(SIGINT, int_exit);
 signal(SIGTERM, int_exit);

 if (load_kallsyms()) {
  printf("failed to process /proc/kallsyms\n");
  return 2;
 }

 if (load_bpf_file(filename)) {
  printf("%s", bpf_log_buf);
  return 1;
 }

 if (argc > 1)
  delay = atoi(argv[1]);
 sleep(delay);
 print_stacks(map_fd[0]);

 return 0;
}
