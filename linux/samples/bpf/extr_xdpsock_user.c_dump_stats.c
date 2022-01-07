
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tx_npkts; int prev_tx_npkts; int rx_npkts; int prev_rx_npkts; } ;


 unsigned long get_nsecs () ;
 int num_socks ;
 unsigned long prev_time ;
 int print_benchmark (int) ;
 int printf (char*,...) ;
 TYPE_1__** xsks ;

__attribute__((used)) static void dump_stats(void)
{
 unsigned long now = get_nsecs();
 long dt = now - prev_time;
 int i;

 prev_time = now;

 for (i = 0; i < num_socks && xsks[i]; i++) {
  char *fmt = "%-15s %'-11.0f %'-11lu\n";
  double rx_pps, tx_pps;

  rx_pps = (xsks[i]->rx_npkts - xsks[i]->prev_rx_npkts) *
    1000000000. / dt;
  tx_pps = (xsks[i]->tx_npkts - xsks[i]->prev_tx_npkts) *
    1000000000. / dt;

  printf("\n sock%d@", i);
  print_benchmark(0);
  printf("\n");

  printf("%-15s %-11s %-11s %-11.2f\n", "", "pps", "pkts",
         dt / 1000000000.);
  printf(fmt, "rx", rx_pps, xsks[i]->rx_npkts);
  printf(fmt, "tx", tx_pps, xsks[i]->tx_npkts);

  xsks[i]->prev_rx_npkts = xsks[i]->rx_npkts;
  xsks[i]->prev_tx_npkts = xsks[i]->tx_npkts;
 }
}
