
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rlimit {int member_1; int member_0; } ;
struct bpf_prog_load_attr {char* file; int prog_type; } ;
struct bpf_prog_info {int id; } ;
struct bpf_object {int dummy; } ;
struct bpf_map {int dummy; } ;
typedef int info ;
typedef int filename ;
typedef int __u32 ;


 int BPF_PROG_TYPE_XDP ;
 int RLIMIT_MEMLOCK ;
 int RLIM_INFINITY ;
 int SIGINT ;
 int SIGTERM ;
 int XDP_FLAGS_DRV_MODE ;
 int XDP_FLAGS_SKB_MODE ;
 int XDP_FLAGS_UPDATE_IF_NOEXIST ;
 void* atoi (int ) ;
 int bpf_map__fd (struct bpf_map*) ;
 struct bpf_map* bpf_map__next (int *,struct bpf_object*) ;
 int bpf_obj_get_info_by_fd (int,struct bpf_prog_info*,int*) ;
 scalar_t__ bpf_prog_load_xattr (struct bpf_prog_load_attr*,struct bpf_object**,int*) ;
 scalar_t__ bpf_set_link_xdp_fd (void*,int,int ) ;
 int errno ;
 int fprintf (int ,char*,...) ;
 int getopt (int,char**,char const*) ;
 void* if_nametoindex (int ) ;
 void* ifindex ;
 int int_exit (int ) ;
 int optarg ;
 int perror (char*) ;
 int poll_stats (int,unsigned int) ;
 int printf (char*,...) ;
 int prog_id ;
 scalar_t__ setrlimit (int ,struct rlimit*) ;
 int signal (int ,int (*) (int )) ;
 int snprintf (char*,int,char*,char*) ;
 int stderr ;
 char* strerror (int ) ;
 int strlen (char const*) ;
 int usage (char*) ;
 int xdp_flags ;

int main(int argc, char **argv)
{
 struct rlimit r = {RLIM_INFINITY, RLIM_INFINITY};
 struct bpf_prog_load_attr prog_load_attr = {
  .prog_type = BPF_PROG_TYPE_XDP,
 };
 unsigned char opt_flags[256] = {};
 const char *optstr = "i:T:SNFh";
 struct bpf_prog_info info = {};
 __u32 info_len = sizeof(info);
 unsigned int kill_after_s = 0;
 int i, prog_fd, map_fd, opt;
 struct bpf_object *obj;
 struct bpf_map *map;
 char filename[256];
 int err;

 for (i = 0; i < strlen(optstr); i++)
  if (optstr[i] != 'h' && 'a' <= optstr[i] && optstr[i] <= 'z')
   opt_flags[(unsigned char)optstr[i]] = 1;

 while ((opt = getopt(argc, argv, optstr)) != -1) {

  switch (opt) {
  case 'i':
   ifindex = if_nametoindex(optarg);
   if (!ifindex)
    ifindex = atoi(optarg);
   break;
  case 'T':
   kill_after_s = atoi(optarg);
   break;
  case 'S':
   xdp_flags |= XDP_FLAGS_SKB_MODE;
   break;
  case 'N':
   xdp_flags |= XDP_FLAGS_DRV_MODE;
   break;
  case 'F':
   xdp_flags &= ~XDP_FLAGS_UPDATE_IF_NOEXIST;
   break;
  default:
   usage(argv[0]);
   return 1;
  }
  opt_flags[opt] = 0;
 }

 for (i = 0; i < strlen(optstr); i++) {
  if (opt_flags[(unsigned int)optstr[i]]) {
   fprintf(stderr, "Missing argument -%c\n", optstr[i]);
   usage(argv[0]);
   return 1;
  }
 }

 if (setrlimit(RLIMIT_MEMLOCK, &r)) {
  perror("setrlimit(RLIMIT_MEMLOCK, RLIM_INFINITY)");
  return 1;
 }

 if (!ifindex) {
  fprintf(stderr, "Invalid ifname\n");
  return 1;
 }

 snprintf(filename, sizeof(filename), "%s_kern.o", argv[0]);
 prog_load_attr.file = filename;

 if (bpf_prog_load_xattr(&prog_load_attr, &obj, &prog_fd))
  return 1;

 map = bpf_map__next(((void*)0), obj);
 if (!map) {
  printf("finding a map in obj file failed\n");
  return 1;
 }
 map_fd = bpf_map__fd(map);

 if (!prog_fd) {
  printf("load_bpf_file: %s\n", strerror(errno));
  return 1;
 }

 signal(SIGINT, int_exit);
 signal(SIGTERM, int_exit);

 if (bpf_set_link_xdp_fd(ifindex, prog_fd, xdp_flags) < 0) {
  printf("link set xdp fd failed\n");
  return 1;
 }

 err = bpf_obj_get_info_by_fd(prog_fd, &info, &info_len);
 if (err) {
  printf("can't get prog info - %s\n", strerror(errno));
  return 1;
 }
 prog_id = info.id;

 poll_stats(map_fd, kill_after_s);
 int_exit(0);

 return 0;
}
