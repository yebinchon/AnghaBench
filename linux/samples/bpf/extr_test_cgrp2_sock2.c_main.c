
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BPF_CGROUP_INET_SOCK_CREATE ;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int O_DIRECTORY ;
 int O_RDONLY ;
 int atoi (char*) ;
 char* bpf_log_buf ;
 int bpf_prog_attach (int ,int,int ,int ) ;
 int errno ;
 scalar_t__ load_bpf_file (char*) ;
 int open (char*,int) ;
 int printf (char*,...) ;
 int prog_cnt ;
 int * prog_fd ;
 char* strerror (int ) ;
 int usage (char*) ;

int main(int argc, char **argv)
{
 int cg_fd, ret, filter_id = 0;

 if (argc < 3)
  return usage(argv[0]);

 cg_fd = open(argv[1], O_DIRECTORY | O_RDONLY);
 if (cg_fd < 0) {
  printf("Failed to open cgroup path: '%s'\n", strerror(errno));
  return EXIT_FAILURE;
 }

 if (load_bpf_file(argv[2]))
  return EXIT_FAILURE;

 printf("Output from kernel verifier:\n%s\n-------\n", bpf_log_buf);

 if (argc > 3)
  filter_id = atoi(argv[3]);

 if (filter_id >= prog_cnt) {
  printf("Invalid program id; program not found in file\n");
  return EXIT_FAILURE;
 }

 ret = bpf_prog_attach(prog_fd[filter_id], cg_fd,
         BPF_CGROUP_INET_SOCK_CREATE, 0);
 if (ret < 0) {
  printf("Failed to attach prog to cgroup: '%s'\n",
         strerror(errno));
  return EXIT_FAILURE;
 }

 return EXIT_SUCCESS;
}
