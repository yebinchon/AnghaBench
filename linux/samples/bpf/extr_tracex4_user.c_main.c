
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rlimit {int member_1; int member_0; } ;
typedef int filename ;


 int RLIMIT_MEMLOCK ;
 int RLIM_INFINITY ;
 char* bpf_log_buf ;
 scalar_t__ load_bpf_file (char*) ;
 int * map_fd ;
 int perror (char*) ;
 int print_old_objects (int ) ;
 int printf (char*,char*) ;
 scalar_t__ setrlimit (int ,struct rlimit*) ;
 int sleep (int) ;
 int snprintf (char*,int,char*,char*) ;

int main(int ac, char **argv)
{
 struct rlimit r = {RLIM_INFINITY, RLIM_INFINITY};
 char filename[256];
 int i;

 snprintf(filename, sizeof(filename), "%s_kern.o", argv[0]);

 if (setrlimit(RLIMIT_MEMLOCK, &r)) {
  perror("setrlimit(RLIMIT_MEMLOCK, RLIM_INFINITY)");
  return 1;
 }

 if (load_bpf_file(filename)) {
  printf("%s", bpf_log_buf);
  return 1;
 }

 for (i = 0; ; i++) {
  print_old_objects(map_fd[1]);
  sleep(1);
 }

 return 0;
}
