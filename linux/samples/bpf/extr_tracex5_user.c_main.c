
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rlimit {int member_1; int member_0; } ;
typedef int filename ;
typedef int FILE ;


 int RLIMIT_MEMLOCK ;
 int RLIM_INFINITY ;
 char* bpf_log_buf ;
 int install_accept_all_seccomp () ;
 scalar_t__ load_bpf_file (char*) ;
 int * popen (char*,char*) ;
 int printf (char*,char*) ;
 int read_trace_pipe () ;
 int setrlimit (int ,struct rlimit*) ;
 int snprintf (char*,int,char*,char*) ;

int main(int ac, char **argv)
{
 FILE *f;
 char filename[256];
 struct rlimit r = {RLIM_INFINITY, RLIM_INFINITY};

 snprintf(filename, sizeof(filename), "%s_kern.o", argv[0]);
 setrlimit(RLIMIT_MEMLOCK, &r);

 if (load_bpf_file(filename)) {
  printf("%s", bpf_log_buf);
  return 1;
 }

 install_accept_all_seccomp();

 f = popen("dd if=/dev/zero of=/dev/null count=5", "r");
 (void) f;

 read_trace_pipe();

 return 0;
}
