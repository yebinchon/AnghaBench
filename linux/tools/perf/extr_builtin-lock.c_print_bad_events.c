
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BROKEN_MAX ;
 int * bad_hist ;
 int pr_info (char*,...) ;

__attribute__((used)) static void print_bad_events(int bad, int total)
{

 int i;
 const char *name[4] =
  { "acquire", "acquired", "contended", "release" };

 pr_info("\n=== output for debug===\n\n");
 pr_info("bad: %d, total: %d\n", bad, total);
 pr_info("bad rate: %.2f %%\n", (double)bad / (double)total * 100);
 pr_info("histogram of events caused bad sequence\n");
 for (i = 0; i < BROKEN_MAX; i++)
  pr_info(" %10s: %d\n", name[i], bad_hist[i]);
}
