
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ __u32 ;


 int BPF_CGROUP_INET_SOCK_CREATE ;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int O_DIRECTORY ;
 int O_RDONLY ;
 int PF_INET ;
 int PF_INET6 ;
 char* bpf_log_buf ;
 int bpf_prog_attach (int,int,int ,int ) ;
 int bpf_prog_detach (int,int ) ;
 int close (int) ;
 int errno ;
 int fprintf (int ,char*) ;
 int getopt (int,char**,char*) ;
 scalar_t__ if_nametoindex (int ) ;
 int open (char const*,int) ;
 int optarg ;
 int optind ;
 int printf (char*,...) ;
 int prog_load (scalar_t__,scalar_t__,scalar_t__) ;
 int show_sockopts (int) ;
 int stderr ;
 char* strerror (int ) ;
 scalar_t__ strtoumax (int ,int *,int ) ;
 int usage (char*) ;

int main(int argc, char **argv)
{
 __u32 idx = 0, mark = 0, prio = 0;
 const char *cgrp_path = ((void*)0);
 int cg_fd, prog_fd, ret;
 int family = PF_INET;
 int do_attach = 1;
 int rc;

 while ((rc = getopt(argc, argv, "db:m:p:6")) != -1) {
  switch (rc) {
  case 'd':
   do_attach = 0;
   break;
  case 'b':
   idx = if_nametoindex(optarg);
   if (!idx) {
    idx = strtoumax(optarg, ((void*)0), 0);
    if (!idx) {
     printf("Invalid device name\n");
     return EXIT_FAILURE;
    }
   }
   break;
  case 'm':
   mark = strtoumax(optarg, ((void*)0), 0);
   break;
  case 'p':
   prio = strtoumax(optarg, ((void*)0), 0);
   break;
  case '6':
   family = PF_INET6;
   break;
  default:
   return usage(argv[0]);
  }
 }

 if (optind == argc)
  return show_sockopts(family);

 cgrp_path = argv[optind];
 if (!cgrp_path) {
  fprintf(stderr, "cgroup path not given\n");
  return EXIT_FAILURE;
 }

 if (do_attach && !idx && !mark && !prio) {
  fprintf(stderr,
   "One of device, mark or priority must be given\n");
  return EXIT_FAILURE;
 }

 cg_fd = open(cgrp_path, O_DIRECTORY | O_RDONLY);
 if (cg_fd < 0) {
  printf("Failed to open cgroup path: '%s'\n", strerror(errno));
  return EXIT_FAILURE;
 }

 if (do_attach) {
  prog_fd = prog_load(idx, mark, prio);
  if (prog_fd < 0) {
   printf("Failed to load prog: '%s'\n", strerror(errno));
   printf("Output from kernel verifier:\n%s\n-------\n",
          bpf_log_buf);
   return EXIT_FAILURE;
  }

  ret = bpf_prog_attach(prog_fd, cg_fd,
          BPF_CGROUP_INET_SOCK_CREATE, 0);
  if (ret < 0) {
   printf("Failed to attach prog to cgroup: '%s'\n",
          strerror(errno));
   return EXIT_FAILURE;
  }
 } else {
  ret = bpf_prog_detach(cg_fd, BPF_CGROUP_INET_SOCK_CREATE);
  if (ret < 0) {
   printf("Failed to detach prog from cgroup: '%s'\n",
          strerror(errno));
   return EXIT_FAILURE;
  }
 }

 close(cg_fd);
 return EXIT_SUCCESS;
}
