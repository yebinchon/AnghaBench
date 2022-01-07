
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rlimit {int member_1; int member_0; } ;
typedef int filename ;


 int RLIMIT_MEMLOCK ;
 int RLIM_INFINITY ;
 int assert (int) ;
 char* bpf_log_buf ;
 scalar_t__ load_bpf_file (char*) ;
 int printf (char*,char*) ;
 int setrlimit (int ,struct rlimit*) ;
 int snprintf (char*,int,char*,char*) ;
 int test_map_in_map () ;

int main(int argc, char **argv)
{
 struct rlimit r = {RLIM_INFINITY, RLIM_INFINITY};
 char filename[256];

 assert(!setrlimit(RLIMIT_MEMLOCK, &r));

 snprintf(filename, sizeof(filename), "%s_kern.o", argv[0]);

 if (load_bpf_file(filename)) {
  printf("%s", bpf_log_buf);
  return 1;
 }

 test_map_in_map();

 return 0;
}
