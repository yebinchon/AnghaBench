
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int POLLIN ;
 int buf ;
 int build_packet () ;
 scalar_t__ cfg_expect_failure ;
 int cfg_num_pkt ;
 int cfg_num_secs ;
 int cfg_only_rx ;
 int cfg_only_tx ;
 scalar_t__ close (int) ;
 int do_poll (int,int ,unsigned long) ;
 scalar_t__ do_rx (int) ;
 scalar_t__ do_tx (int,int ,int) ;
 int errno ;
 int error (int,int ,char*) ;
 int fprintf (int ,char*,int,int) ;
 int setup_rx () ;
 int setup_tx () ;
 int stderr ;
 int util_gettime () ;

__attribute__((used)) static int do_main(void)
{
 unsigned long tstop, treport, tcur;
 int fdt = -1, fdr = -1, len, tx = 0, rx = 0;

 if (!cfg_only_tx)
  fdr = setup_rx();
 if (!cfg_only_rx)
  fdt = setup_tx();

 len = build_packet();

 tcur = util_gettime();
 treport = tcur + 1000;
 tstop = tcur + (cfg_num_secs * 1000);

 while (1) {
  if (!cfg_only_rx)
   tx += do_tx(fdt, buf, len);

  if (!cfg_only_tx)
   rx += do_rx(fdr);

  if (cfg_num_secs) {
   tcur = util_gettime();
   if (tcur >= tstop)
    break;
   if (tcur >= treport) {
    fprintf(stderr, "pkts: tx=%u rx=%u\n", tx, rx);
    tx = 0;
    rx = 0;
    treport = tcur + 1000;
   }
  } else {
   if (tx == cfg_num_pkt)
    break;
  }
 }


 if (rx < tx) {
  tstop = util_gettime() + 100;
  while (rx < tx) {
   tcur = util_gettime();
   if (tcur >= tstop)
    break;

   do_poll(fdr, POLLIN, tstop - tcur);
   rx += do_rx(fdr);
  }
 }

 fprintf(stderr, "pkts: tx=%u rx=%u\n", tx, rx);

 if (fdr != -1 && close(fdr))
  error(1, errno, "close rx");
 if (fdt != -1 && close(fdt))
  error(1, errno, "close tx");





 if (cfg_expect_failure)
  return rx != 0;
 else
  return rx != tx;
}
