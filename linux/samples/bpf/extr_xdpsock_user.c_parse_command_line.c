
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BENCH_L2FWD ;
 int BENCH_RXDROP ;
 int BENCH_TXONLY ;
 int MAP_HUGETLB ;
 int XDP_COPY ;
 int XDP_FLAGS_DRV_MODE ;
 int XDP_FLAGS_SKB_MODE ;
 int XDP_FLAGS_UPDATE_IF_NOEXIST ;
 int XDP_UMEM_UNALIGNED_CHUNK_FLAG ;
 int XDP_USE_NEED_WAKEUP ;
 int XDP_ZEROCOPY ;
 void* atoi (char*) ;
 int basename (char*) ;
 int fprintf (int ,char*,...) ;
 int getopt_long (int,char**,char*,int ,int*) ;
 int if_nametoindex (char*) ;
 int long_options ;
 int opt_bench ;
 char* opt_if ;
 int opt_ifindex ;
 void* opt_interval ;
 int opt_mmap_flags ;
 int opt_need_wakeup ;
 int opt_poll ;
 void* opt_queue ;
 int opt_umem_flags ;
 int opt_unaligned_chunks ;
 int opt_xdp_bind_flags ;
 int opt_xdp_flags ;
 int opt_xsk_frame_size ;
 char* optarg ;
 scalar_t__ opterr ;
 int stderr ;
 int usage (int ) ;

__attribute__((used)) static void parse_command_line(int argc, char **argv)
{
 int option_index, c;

 opterr = 0;

 for (;;) {
  c = getopt_long(argc, argv, "Frtli:q:psSNn:czf:mu",
    long_options, &option_index);
  if (c == -1)
   break;

  switch (c) {
  case 'r':
   opt_bench = BENCH_RXDROP;
   break;
  case 't':
   opt_bench = BENCH_TXONLY;
   break;
  case 'l':
   opt_bench = BENCH_L2FWD;
   break;
  case 'i':
   opt_if = optarg;
   break;
  case 'q':
   opt_queue = atoi(optarg);
   break;
  case 'p':
   opt_poll = 1;
   break;
  case 'S':
   opt_xdp_flags |= XDP_FLAGS_SKB_MODE;
   opt_xdp_bind_flags |= XDP_COPY;
   break;
  case 'N':
   opt_xdp_flags |= XDP_FLAGS_DRV_MODE;
   break;
  case 'n':
   opt_interval = atoi(optarg);
   break;
  case 'z':
   opt_xdp_bind_flags |= XDP_ZEROCOPY;
   break;
  case 'c':
   opt_xdp_bind_flags |= XDP_COPY;
   break;
  case 'u':
   opt_umem_flags |= XDP_UMEM_UNALIGNED_CHUNK_FLAG;
   opt_unaligned_chunks = 1;
   opt_mmap_flags = MAP_HUGETLB;
   break;
  case 'F':
   opt_xdp_flags &= ~XDP_FLAGS_UPDATE_IF_NOEXIST;
   break;
  case 'f':
   opt_xsk_frame_size = atoi(optarg);
  case 'm':
   opt_need_wakeup = 0;
   opt_xdp_bind_flags &= ~XDP_USE_NEED_WAKEUP;
   break;

  default:
   usage(basename(argv[0]));
  }
 }

 opt_ifindex = if_nametoindex(opt_if);
 if (!opt_ifindex) {
  fprintf(stderr, "ERROR: interface \"%s\" does not exist\n",
   opt_if);
  usage(basename(argv[0]));
 }

 if ((opt_xsk_frame_size & (opt_xsk_frame_size - 1)) &&
     !opt_unaligned_chunks) {
  fprintf(stderr, "--frame-size=%d is not a power of two\n",
   opt_xsk_frame_size);
  usage(basename(argv[0]));
 }
}
