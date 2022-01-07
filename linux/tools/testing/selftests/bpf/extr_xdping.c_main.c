
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct rlimit {int member_1; int member_0; } ;
struct pinginfo {int count; int seq; int member_0; } ;
struct bpf_program {int dummy; } ;
struct bpf_object {int dummy; } ;
struct bpf_map {int dummy; } ;
struct addrinfo {int ai_addr; int ai_family; } ;
typedef int rin ;
typedef int filename ;
typedef int cmd ;
typedef int __u32 ;
typedef int __u16 ;


 int AF_INET ;
 int BPF_ANY ;
 int BPF_PROG_TYPE_XDP ;
 int RLIMIT_MEMLOCK ;
 int RLIM_INFINITY ;
 int SIGINT ;
 int SIGTERM ;
 int XDPING_DEFAULT_COUNT ;
 int XDPING_MAX_COUNT ;
 int XDP_FLAGS_DRV_MODE ;
 int XDP_FLAGS_SKB_MODE ;
 int atoi (char*) ;
 int basename (char*) ;
 int bpf_map__fd (struct bpf_map*) ;
 struct bpf_map* bpf_map__next (int *,struct bpf_object*) ;
 scalar_t__ bpf_map_update_elem (int,int*,struct pinginfo*,int ) ;
 struct bpf_program* bpf_object__find_program_by_title (struct bpf_object*,char*) ;
 scalar_t__ bpf_prog_load (char*,int ,struct bpf_object**,int*) ;
 int bpf_program__fd (struct bpf_program*) ;
 scalar_t__ bpf_set_link_xdp_fd (int ,int,int) ;
 int cleanup (int ) ;
 int close (int) ;
 int errno ;
 int fprintf (int ,char*,...) ;
 int freeaddrinfo (struct addrinfo*) ;
 int get_stats (int,int,int) ;
 scalar_t__ getaddrinfo (char*,int *,struct addrinfo*,struct addrinfo**) ;
 int getopt (int,char**,char const*) ;
 int htons (int) ;
 int if_nametoindex (char*) ;
 int ifindex ;
 int memcpy (struct sockaddr_in*,int ,int) ;
 char* optarg ;
 int optind ;
 int perror (char*) ;
 int printf (char*,...) ;
 scalar_t__ setrlimit (int ,struct rlimit*) ;
 int show_usage (int ) ;
 int signal (int ,int (*) (int )) ;
 int sleep (int) ;
 int snprintf (char*,int,char*,...) ;
 int stderr ;
 char* strerror (int ) ;
 int system (char*) ;
 int xdp_flags ;

int main(int argc, char **argv)
{
 __u32 mode_flags = XDP_FLAGS_DRV_MODE | XDP_FLAGS_SKB_MODE;
 struct addrinfo *a, hints = { .ai_family = AF_INET };
 struct rlimit r = {RLIM_INFINITY, RLIM_INFINITY};
 __u16 count = XDPING_DEFAULT_COUNT;
 struct pinginfo pinginfo = { 0 };
 const char *optstr = "c:I:NsS";
 struct bpf_program *main_prog;
 int prog_fd = -1, map_fd = -1;
 struct sockaddr_in rin;
 struct bpf_object *obj;
 struct bpf_map *map;
 char *ifname = ((void*)0);
 char filename[256];
 int opt, ret = 1;
 __u32 raddr = 0;
 int server = 0;
 char cmd[256];

 while ((opt = getopt(argc, argv, optstr)) != -1) {
  switch (opt) {
  case 'c':
   count = atoi(optarg);
   if (count < 1 || count > XDPING_MAX_COUNT) {
    fprintf(stderr,
     "min count is 1, max count is %d\n",
     XDPING_MAX_COUNT);
    return 1;
   }
   break;
  case 'I':
   ifname = optarg;
   ifindex = if_nametoindex(ifname);
   if (!ifindex) {
    fprintf(stderr, "Could not get interface %s\n",
     ifname);
    return 1;
   }
   break;
  case 'N':
   xdp_flags |= XDP_FLAGS_DRV_MODE;
   break;
  case 's':

   server = 1;
   break;
  case 'S':
   xdp_flags |= XDP_FLAGS_SKB_MODE;
   break;
  default:
   show_usage(basename(argv[0]));
   return 1;
  }
 }

 if (!ifname) {
  show_usage(basename(argv[0]));
  return 1;
 }
 if (!server && optind == argc) {
  show_usage(basename(argv[0]));
  return 1;
 }

 if ((xdp_flags & mode_flags) == mode_flags) {
  fprintf(stderr, "-N or -S can be specified, not both.\n");
  show_usage(basename(argv[0]));
  return 1;
 }

 if (!server) {

  if (getaddrinfo(argv[optind], ((void*)0), &hints, &a) || !a) {
   fprintf(stderr, "Could not resolve %s\n", argv[optind]);
   return 1;
  }
  memcpy(&rin, a->ai_addr, sizeof(rin));
  raddr = rin.sin_addr.s_addr;
  freeaddrinfo(a);
 }

 if (setrlimit(RLIMIT_MEMLOCK, &r)) {
  perror("setrlimit(RLIMIT_MEMLOCK)");
  return 1;
 }

 snprintf(filename, sizeof(filename), "%s_kern.o", argv[0]);

 if (bpf_prog_load(filename, BPF_PROG_TYPE_XDP, &obj, &prog_fd)) {
  fprintf(stderr, "load of %s failed\n", filename);
  return 1;
 }

 main_prog = bpf_object__find_program_by_title(obj,
            server ? "xdpserver" :
              "xdpclient");
 if (main_prog)
  prog_fd = bpf_program__fd(main_prog);
 if (!main_prog || prog_fd < 0) {
  fprintf(stderr, "could not find xdping program");
  return 1;
 }

 map = bpf_map__next(((void*)0), obj);
 if (map)
  map_fd = bpf_map__fd(map);
 if (!map || map_fd < 0) {
  fprintf(stderr, "Could not find ping map");
  goto done;
 }

 signal(SIGINT, cleanup);
 signal(SIGTERM, cleanup);

 printf("Setting up XDP for %s, please wait...\n", ifname);

 printf("XDP setup disrupts network connectivity, hit Ctrl+C to quit\n");

 if (bpf_set_link_xdp_fd(ifindex, prog_fd, xdp_flags) < 0) {
  fprintf(stderr, "Link set xdp fd failed for %s\n", ifname);
  goto done;
 }

 if (server) {
  close(prog_fd);
  close(map_fd);
  printf("Running server on %s; press Ctrl+C to exit...\n",
         ifname);
  do { } while (1);
 }







 pinginfo.seq = htons(count);
 pinginfo.count = count;

 if (bpf_map_update_elem(map_fd, &raddr, &pinginfo, BPF_ANY)) {
  fprintf(stderr, "could not communicate with BPF map: %s\n",
   strerror(errno));
  cleanup(0);
  goto done;
 }


 sleep(10);

 snprintf(cmd, sizeof(cmd), "ping -c %d -I %s %s",
   count, ifname, argv[optind]);

 printf("\nNormal ping RTT data\n");
 printf("[Ignore final RTT; it is distorted by XDP using the reply]\n");

 ret = system(cmd);

 if (!ret)
  ret = get_stats(map_fd, count, raddr);

 cleanup(0);

done:
 if (prog_fd > 0)
  close(prog_fd);
 if (map_fd > 0)
  close(map_fd);

 return ret;
}
