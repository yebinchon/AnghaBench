
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rlimit {int member_1; int member_0; } ;
struct perf_buffer_opts {int sample_cb; } ;
struct bpf_prog_load_attr {char* file; int prog_type; } ;
struct bpf_object {int dummy; } ;
struct bpf_map {int dummy; } ;
typedef int filename ;


 int BPF_PROG_TYPE_XDP ;
 int RLIMIT_MEMLOCK ;
 int RLIM_INFINITY ;
 int SIGHUP ;
 int SIGINT ;
 int SIGTERM ;
 int XDP_FLAGS_UPDATE_IF_NOEXIST ;
 int basename (char*) ;
 int bpf_map__fd (struct bpf_map*) ;
 struct bpf_map* bpf_map__next (int *,struct bpf_object*) ;
 scalar_t__ bpf_prog_load_xattr (struct bpf_prog_load_attr*,struct bpf_object**,int*) ;
 int do_attach (scalar_t__,int,char*) ;
 int errno ;
 int fprintf (int ,char*) ;
 int getopt (int,char**,char const*) ;
 scalar_t__ if_idx ;
 char* if_name ;
 scalar_t__ if_nametoindex (char*) ;
 int kill (int ,int ) ;
 int libbpf_get_error (int ) ;
 int optind ;
 int pb ;
 int perf_buffer__new (int,int,struct perf_buffer_opts*) ;
 int perf_buffer__poll (int ,int) ;
 int perror (char*) ;
 int print_bpf_output ;
 int printf (char*,...) ;
 scalar_t__ setrlimit (int ,struct rlimit*) ;
 int sig_handler ;
 scalar_t__ signal (int ,int ) ;
 int snprintf (char*,int,char*,char*) ;
 int stderr ;
 char* strerror (int ) ;
 scalar_t__ strtoul (char*,int *,int ) ;
 int usage (int ) ;
 int xdp_flags ;

int main(int argc, char **argv)
{
 struct rlimit r = {RLIM_INFINITY, RLIM_INFINITY};
 struct bpf_prog_load_attr prog_load_attr = {
  .prog_type = BPF_PROG_TYPE_XDP,
 };
 struct perf_buffer_opts pb_opts = {};
 const char *optstr = "F";
 int prog_fd, map_fd, opt;
 struct bpf_object *obj;
 struct bpf_map *map;
 char filename[256];
 int ret, err;

 while ((opt = getopt(argc, argv, optstr)) != -1) {
  switch (opt) {
  case 'F':
   xdp_flags &= ~XDP_FLAGS_UPDATE_IF_NOEXIST;
   break;
  default:
   usage(basename(argv[0]));
   return 1;
  }
 }

 if (optind == argc) {
  usage(basename(argv[0]));
  return 1;
 }

 if (setrlimit(RLIMIT_MEMLOCK, &r)) {
  perror("setrlimit(RLIMIT_MEMLOCK)");
  return 1;
 }

 snprintf(filename, sizeof(filename), "%s_kern.o", argv[0]);
 prog_load_attr.file = filename;

 if (bpf_prog_load_xattr(&prog_load_attr, &obj, &prog_fd))
  return 1;

 if (!prog_fd) {
  printf("load_bpf_file: %s\n", strerror(errno));
  return 1;
 }

 map = bpf_map__next(((void*)0), obj);
 if (!map) {
  printf("finding a map in obj file failed\n");
  return 1;
 }
 map_fd = bpf_map__fd(map);

 if_idx = if_nametoindex(argv[optind]);
 if (!if_idx)
  if_idx = strtoul(argv[optind], ((void*)0), 0);

 if (!if_idx) {
  fprintf(stderr, "Invalid ifname\n");
  return 1;
 }
 if_name = argv[optind];
 err = do_attach(if_idx, prog_fd, if_name);
 if (err)
  return err;

 if (signal(SIGINT, sig_handler) ||
     signal(SIGHUP, sig_handler) ||
     signal(SIGTERM, sig_handler)) {
  perror("signal");
  return 1;
 }

 pb_opts.sample_cb = print_bpf_output;
 pb = perf_buffer__new(map_fd, 8, &pb_opts);
 err = libbpf_get_error(pb);
 if (err) {
  perror("perf_buffer setup failed");
  return 1;
 }

 while ((ret = perf_buffer__poll(pb, 1000)) >= 0) {
 }

 kill(0, SIGINT);
 return ret;
}
