
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ BENCH_L2FWD ;
 scalar_t__ BENCH_RXDROP ;
 scalar_t__ BENCH_TXONLY ;
 int XDP_FLAGS_DRV_MODE ;
 int XDP_FLAGS_SKB_MODE ;
 int fflush (int ) ;
 scalar_t__ opt_bench ;
 char* opt_if ;
 scalar_t__ opt_poll ;
 int opt_queue ;
 int opt_xdp_flags ;
 int printf (char*,...) ;
 int stdout ;

__attribute__((used)) static void print_benchmark(bool running)
{
 const char *bench_str = "INVALID";

 if (opt_bench == BENCH_RXDROP)
  bench_str = "rxdrop";
 else if (opt_bench == BENCH_TXONLY)
  bench_str = "txonly";
 else if (opt_bench == BENCH_L2FWD)
  bench_str = "l2fwd";

 printf("%s:%d %s ", opt_if, opt_queue, bench_str);
 if (opt_xdp_flags & XDP_FLAGS_SKB_MODE)
  printf("xdp-skb ");
 else if (opt_xdp_flags & XDP_FLAGS_DRV_MODE)
  printf("xdp-drv ");
 else
  printf("	");

 if (opt_poll)
  printf("poll() ");

 if (running) {
  printf("running...");
  fflush(stdout);
 }
}
