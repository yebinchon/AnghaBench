
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int filename ;
typedef int FILE ;


 char* bpf_log_buf ;
 scalar_t__ load_bpf_file (char*) ;
 int * popen (char*,char*) ;
 int printf (char*,char*) ;
 int read_trace_pipe () ;
 int snprintf (char*,int,char*,char*) ;

int main(int ac, char **argv)
{
 FILE *f;
 char filename[256];

 snprintf(filename, sizeof(filename), "%s_kern.o", argv[0]);

 if (load_bpf_file(filename)) {
  printf("%s", bpf_log_buf);
  return 1;
 }

 f = popen("taskset 1 ping -c5 localhost", "r");
 (void) f;

 read_trace_pipe();

 return 0;
}
