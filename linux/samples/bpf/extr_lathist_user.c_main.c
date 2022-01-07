
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int filename ;


 char* bpf_log_buf ;
 int get_data (int ) ;
 scalar_t__ load_bpf_file (char*) ;
 int * map_fd ;
 int print_hist () ;
 int printf (char*,char*) ;
 int sleep (int) ;
 int snprintf (char*,int,char*,char*) ;

int main(int argc, char **argv)
{
 char filename[256];

 snprintf(filename, sizeof(filename), "%s_kern.o", argv[0]);

 if (load_bpf_file(filename)) {
  printf("%s", bpf_log_buf);
  return 1;
 }

 while (1) {
  get_data(map_fd[1]);
  print_hist();
  sleep(5);
 }

 return 0;
}
