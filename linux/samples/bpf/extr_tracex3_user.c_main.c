
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rlimit {int member_0; int member_1; } ;
typedef int filename ;


 int RLIMIT_MEMLOCK ;
 int RLIM_INFINITY ;
 char* bpf_log_buf ;
 char** color ;
 int full_range ;
 scalar_t__ load_bpf_file (char*) ;
 int * map_fd ;
 char* nocolor ;
 int num_colors ;
 int perror (char*) ;
 int print_banner () ;
 int print_hist (int ) ;
 int printf (char*,...) ;
 scalar_t__ setrlimit (int ,struct rlimit*) ;
 int sleep (int) ;
 int snprintf (char*,int,char*,char*) ;
 scalar_t__ strcmp (char*,char*) ;
 char** sym ;
 int text_only ;

int main(int ac, char **argv)
{
 struct rlimit r = {1024*1024, RLIM_INFINITY};
 char filename[256];
 int i;

 snprintf(filename, sizeof(filename), "%s_kern.o", argv[0]);

 if (setrlimit(RLIMIT_MEMLOCK, &r)) {
  perror("setrlimit(RLIMIT_MEMLOCK)");
  return 1;
 }

 if (load_bpf_file(filename)) {
  printf("%s", bpf_log_buf);
  return 1;
 }

 for (i = 1; i < ac; i++) {
  if (strcmp(argv[i], "-a") == 0) {
   full_range = 1;
  } else if (strcmp(argv[i], "-t") == 0) {
   text_only = 1;
  } else if (strcmp(argv[i], "-h") == 0) {
   printf("Usage:\n"
          "  -a display wider latency range\n"
          "  -t text only\n");
   return 1;
  }
 }

 printf("  heatmap of IO latency\n");
 if (text_only)
  printf("  %s", sym[num_colors - 1]);
 else
  printf("  %s %s", color[num_colors - 1], nocolor);
 printf(" - many events with this latency\n");

 if (text_only)
  printf("  %s", sym[0]);
 else
  printf("  %s %s", color[0], nocolor);
 printf(" - few events\n");

 for (i = 0; ; i++) {
  if (i % 20 == 0)
   print_banner();
  print_hist(map_fd[1]);
  sleep(2);
 }

 return 0;
}
