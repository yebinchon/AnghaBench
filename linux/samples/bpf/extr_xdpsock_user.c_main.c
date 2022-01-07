
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xsk_umem_info {int dummy; } ;
struct rlimit {int member_1; int member_0; } ;
typedef int pthread_t ;


 scalar_t__ BENCH_RXDROP ;
 scalar_t__ BENCH_TXONLY ;
 int EXIT_FAILURE ;
 int LC_ALL ;
 int MAP_ANONYMOUS ;
 void* MAP_FAILED ;
 int MAP_PRIVATE ;
 int NUM_FRAMES ;
 int PROT_READ ;
 int PROT_WRITE ;
 int RLIMIT_MEMLOCK ;
 int RLIM_INFINITY ;
 int SIGABRT ;
 int SIGINT ;
 int SIGTERM ;
 int errno ;
 int exit (int ) ;
 int exit_with_error (int) ;
 int fprintf (int ,char*,char*) ;
 int gen_eth_frame (struct xsk_umem_info*,int) ;
 int get_nsecs () ;
 int int_exit ;
 int l2fwd_all () ;
 void* mmap (int *,int,int,int,int,int ) ;
 int num_socks ;
 scalar_t__ opt_bench ;
 int opt_mmap_flags ;
 int opt_xsk_frame_size ;
 int parse_command_line (int,char**) ;
 int poller ;
 int prev_time ;
 int printf (char*) ;
 int pthread_create (int *,int *,int ,int *) ;
 int rx_drop_all () ;
 int setlocale (int ,char*) ;
 scalar_t__ setrlimit (int ,struct rlimit*) ;
 int signal (int ,int ) ;
 int stderr ;
 char* strerror (int ) ;
 int tx_only_all () ;
 int xsk_configure_socket (struct xsk_umem_info*) ;
 struct xsk_umem_info* xsk_configure_umem (void*,int) ;
 int * xsks ;

int main(int argc, char **argv)
{
 struct rlimit r = {RLIM_INFINITY, RLIM_INFINITY};
 struct xsk_umem_info *umem;
 pthread_t pt;
 void *bufs;
 int ret;

 parse_command_line(argc, argv);

 if (setrlimit(RLIMIT_MEMLOCK, &r)) {
  fprintf(stderr, "ERROR: setrlimit(RLIMIT_MEMLOCK) \"%s\"\n",
   strerror(errno));
  exit(EXIT_FAILURE);
 }


 bufs = mmap(((void*)0), NUM_FRAMES * opt_xsk_frame_size,
      PROT_READ | PROT_WRITE,
      MAP_PRIVATE | MAP_ANONYMOUS | opt_mmap_flags, -1, 0);
 if (bufs == MAP_FAILED) {
  printf("ERROR: mmap failed\n");
  exit(EXIT_FAILURE);
 }

 umem = xsk_configure_umem(bufs, NUM_FRAMES * opt_xsk_frame_size);
 xsks[num_socks++] = xsk_configure_socket(umem);

 if (opt_bench == BENCH_TXONLY) {
  int i;

  for (i = 0; i < NUM_FRAMES; i++)
   (void)gen_eth_frame(umem, i * opt_xsk_frame_size);
 }

 signal(SIGINT, int_exit);
 signal(SIGTERM, int_exit);
 signal(SIGABRT, int_exit);

 setlocale(LC_ALL, "");

 ret = pthread_create(&pt, ((void*)0), poller, ((void*)0));
 if (ret)
  exit_with_error(ret);

 prev_time = get_nsecs();

 if (opt_bench == BENCH_RXDROP)
  rx_drop_all();
 else if (opt_bench == BENCH_TXONLY)
  tx_only_all();
 else
  l2fwd_all();

 return 0;
}
