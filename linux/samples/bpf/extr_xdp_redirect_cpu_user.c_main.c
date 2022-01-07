
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rlimit {int member_0; int member_1; } ;
struct bpf_program {int dummy; } ;
struct bpf_prog_load_attr {char* file; int prog_type; } ;
struct bpf_prog_info {int id; } ;
struct bpf_object {int dummy; } ;
typedef int info ;
typedef int filename ;
typedef int __u32 ;


 int BPF_PROG_TYPE_UNSPEC ;
 int EXIT_FAIL ;
 int EXIT_FAIL_OPTION ;
 int EXIT_FAIL_XDP ;
 int EXIT_OK ;
 int IF_NAMESIZE ;
 int MAX_CPUS ;
 int RLIMIT_MEMLOCK ;
 int RLIM_INFINITY ;
 int SIGINT ;
 int SIGTERM ;
 int XDP_FLAGS_SKB_MODE ;
 int XDP_FLAGS_UPDATE_IF_NOEXIST ;
 void* atoi (char*) ;
 int bpf_obj_get_info_by_fd (int,struct bpf_prog_info*,int*) ;
 struct bpf_program* bpf_object__find_program_by_title (struct bpf_object*,char*) ;
 scalar_t__ bpf_prog_load_xattr (struct bpf_prog_load_attr*,struct bpf_object**,int*) ;
 int bpf_program__fd (struct bpf_program*) ;
 scalar_t__ bpf_set_link_xdp_fd (int,int,int ) ;
 int create_cpu_entry (int,int,int,int) ;
 int errno ;
 int fprintf (int ,char*,...) ;
 int getopt_long (int,char**,char*,int ,int*) ;
 int if_nametoindex (char*) ;
 int ifindex ;
 char* ifname ;
 int ifname_buf ;
 scalar_t__ init_map_fds (struct bpf_object*) ;
 int int_exit ;
 int long_options ;
 int mark_cpus_unavailable () ;
 char* optarg ;
 int perror (char*) ;
 int printf (char*,char*) ;
 int prog_id ;
 scalar_t__ setrlimit (int ,struct rlimit*) ;
 int signal (int ,int ) ;
 int snprintf (char*,int,char*,char*) ;
 int stats_poll (int,int,char*,int) ;
 int stderr ;
 char* strerror (int) ;
 int strlen (char*) ;
 int strncpy (char*,char*,int ) ;
 int strtoul (char*,int *,int ) ;
 int usage (char**,struct bpf_object*) ;
 int xdp_flags ;

int main(int argc, char **argv)
{
 struct rlimit r = {10 * 1024 * 1024, RLIM_INFINITY};
 char *prog_name = "xdp_cpu_map5_lb_hash_ip_pairs";
 struct bpf_prog_load_attr prog_load_attr = {
  .prog_type = BPF_PROG_TYPE_UNSPEC,
 };
 struct bpf_prog_info info = {};
 __u32 info_len = sizeof(info);
 bool use_separators = 1;
 bool stress_mode = 0;
 struct bpf_program *prog;
 struct bpf_object *obj;
 char filename[256];
 int added_cpus = 0;
 int longindex = 0;
 int interval = 2;
 int add_cpu = -1;
 int opt, err;
 int prog_fd;
 __u32 qsize;







 qsize = 128+64;

 snprintf(filename, sizeof(filename), "%s_kern.o", argv[0]);
 prog_load_attr.file = filename;

 if (setrlimit(RLIMIT_MEMLOCK, &r)) {
  perror("setrlimit(RLIMIT_MEMLOCK)");
  return 1;
 }

 if (bpf_prog_load_xattr(&prog_load_attr, &obj, &prog_fd))
  return EXIT_FAIL;

 if (prog_fd < 0) {
  fprintf(stderr, "ERR: bpf_prog_load_xattr: %s\n",
   strerror(errno));
  return EXIT_FAIL;
 }
 if (init_map_fds(obj) < 0) {
  fprintf(stderr, "bpf_object__find_map_fd_by_name failed\n");
  return EXIT_FAIL;
 }
 mark_cpus_unavailable();


 while ((opt = getopt_long(argc, argv, "hSd:s:p:q:c:xzF",
      long_options, &longindex)) != -1) {
  switch (opt) {
  case 'd':
   if (strlen(optarg) >= IF_NAMESIZE) {
    fprintf(stderr, "ERR: --dev name too long\n");
    goto error;
   }
   ifname = (char *)&ifname_buf;
   strncpy(ifname, optarg, IF_NAMESIZE);
   ifindex = if_nametoindex(ifname);
   if (ifindex == 0) {
    fprintf(stderr,
     "ERR: --dev name unknown err(%d):%s\n",
     errno, strerror(errno));
    goto error;
   }
   break;
  case 's':
   interval = atoi(optarg);
   break;
  case 'S':
   xdp_flags |= XDP_FLAGS_SKB_MODE;
   break;
  case 'x':
   stress_mode = 1;
   break;
  case 'z':
   use_separators = 0;
   break;
  case 'p':

   prog_name = optarg;
   break;
  case 'c':

   add_cpu = strtoul(optarg, ((void*)0), 0);
   if (add_cpu >= MAX_CPUS) {
    fprintf(stderr,
    "--cpu nr too large for cpumap err(%d):%s\n",
     errno, strerror(errno));
    goto error;
   }
   create_cpu_entry(add_cpu, qsize, added_cpus, 1);
   added_cpus++;
   break;
  case 'q':
   qsize = atoi(optarg);
   break;
  case 'F':
   xdp_flags &= ~XDP_FLAGS_UPDATE_IF_NOEXIST;
   break;
  case 'h':
  error:
  default:
   usage(argv, obj);
   return EXIT_FAIL_OPTION;
  }
 }

 if (ifindex == -1) {
  fprintf(stderr, "ERR: required option --dev missing\n");
  usage(argv, obj);
  return EXIT_FAIL_OPTION;
 }

 if (add_cpu == -1) {
  fprintf(stderr, "ERR: required option --cpu missing\n");
  fprintf(stderr, " Specify multiple --cpu option to add more\n");
  usage(argv, obj);
  return EXIT_FAIL_OPTION;
 }


 signal(SIGINT, int_exit);
 signal(SIGTERM, int_exit);

 prog = bpf_object__find_program_by_title(obj, prog_name);
 if (!prog) {
  fprintf(stderr, "bpf_object__find_program_by_title failed\n");
  return EXIT_FAIL;
 }

 prog_fd = bpf_program__fd(prog);
 if (prog_fd < 0) {
  fprintf(stderr, "bpf_program__fd failed\n");
  return EXIT_FAIL;
 }

 if (bpf_set_link_xdp_fd(ifindex, prog_fd, xdp_flags) < 0) {
  fprintf(stderr, "link set xdp fd failed\n");
  return EXIT_FAIL_XDP;
 }

 err = bpf_obj_get_info_by_fd(prog_fd, &info, &info_len);
 if (err) {
  printf("can't get prog info - %s\n", strerror(errno));
  return err;
 }
 prog_id = info.id;

 stats_poll(interval, use_separators, prog_name, stress_mode);
 return EXIT_OK;
}
