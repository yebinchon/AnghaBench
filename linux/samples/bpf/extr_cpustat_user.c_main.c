
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int filename ;


 int SIGINT ;
 int SIGTERM ;
 char* bpf_log_buf ;
 int cpu_stat_inject_cpu_frequency_event () ;
 int cpu_stat_inject_cpu_idle_event () ;
 int cpu_stat_print () ;
 int cpu_stat_update (int ,int ) ;
 int int_exit ;
 scalar_t__ load_bpf_file (char*) ;
 int * map_fd ;
 int printf (char*,char*) ;
 int signal (int ,int ) ;
 int sleep (int) ;
 int snprintf (char*,int,char*,char*) ;

int main(int argc, char **argv)
{
 char filename[256];
 int ret;

 snprintf(filename, sizeof(filename), "%s_kern.o", argv[0]);

 if (load_bpf_file(filename)) {
  printf("%s", bpf_log_buf);
  return 1;
 }

 ret = cpu_stat_inject_cpu_idle_event();
 if (ret < 0)
  return 1;

 ret = cpu_stat_inject_cpu_frequency_event();
 if (ret < 0)
  return 1;

 signal(SIGINT, int_exit);
 signal(SIGTERM, int_exit);

 while (1) {
  cpu_stat_update(map_fd[1], map_fd[2]);
  cpu_stat_print();
  sleep(5);
 }

 return 0;
}
