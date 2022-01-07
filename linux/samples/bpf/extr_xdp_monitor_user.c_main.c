
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rlimit {int member_1; int member_0; } ;
typedef int bpf_obj_file ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int RLIMIT_MEMLOCK ;
 int RLIM_INFINITY ;
 int atoi (int ) ;
 char* bpf_log_buf ;
 int close (int ) ;
 int debug ;
 int errno ;
 int * event_fd ;
 int getopt_long (int,char**,char*,int ,int*) ;
 scalar_t__ load_bpf_file (char*) ;
 int long_options ;
 int optarg ;
 int perror (char*) ;
 int print_bpf_prog_info () ;
 int printf (char*,char*) ;
 int * prog_fd ;
 scalar_t__ setrlimit (int ,struct rlimit*) ;
 int snprintf (char*,int,char*,char*) ;
 int stats_poll (int,int) ;
 char* strerror (int ) ;
 int usage (char**) ;

int main(int argc, char **argv)
{
 struct rlimit r = {RLIM_INFINITY, RLIM_INFINITY};
 int longindex = 0, opt;
 int ret = EXIT_SUCCESS;
 char bpf_obj_file[256];


 bool errors_only = 1;
 int interval = 2;

 snprintf(bpf_obj_file, sizeof(bpf_obj_file), "%s_kern.o", argv[0]);


 while ((opt = getopt_long(argc, argv, "hDSs:",
      long_options, &longindex)) != -1) {
  switch (opt) {
  case 'D':
   debug = 1;
   break;
  case 'S':
   errors_only = 0;
   break;
  case 's':
   interval = atoi(optarg);
   break;
  case 'h':
  default:
   usage(argv);
   return EXIT_FAILURE;
  }
 }

 if (setrlimit(RLIMIT_MEMLOCK, &r)) {
  perror("setrlimit(RLIMIT_MEMLOCK)");
  return EXIT_FAILURE;
 }

 if (load_bpf_file(bpf_obj_file)) {
  printf("ERROR - bpf_log_buf: %s", bpf_log_buf);
  return EXIT_FAILURE;
 }
 if (!prog_fd[0]) {
  printf("ERROR - load_bpf_file: %s\n", strerror(errno));
  return EXIT_FAILURE;
 }

 if (debug) {
  print_bpf_prog_info();
 }


 if (errors_only) {



  close(event_fd[2]);
  close(prog_fd[2]);
  close(event_fd[3]);
  close(prog_fd[3]);
 }

 stats_poll(interval, errors_only);

 return ret;
}
