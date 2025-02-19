
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wspace {int dummy; } ;
struct rs_control {TYPE_1__* codec; } ;
struct bcstat {int rfail; int nwords; int rsuccess; int noncw; int member_3; int member_2; int member_1; int member_0; } ;
struct TYPE_2__ {int nroots; } ;


 scalar_t__ V_CSUMMARY ;
 scalar_t__ V_PROGRESS ;
 int pr_info (char*,...) ;
 int pr_warn (char*,int) ;
 int test_bc (struct rs_control*,int,int,int,int,struct bcstat*,struct wspace*) ;
 scalar_t__ v ;

__attribute__((used)) static int exercise_rs_bc(struct rs_control *rs, struct wspace *ws,
     int len, int trials)
{
 struct bcstat stat = {0, 0, 0, 0};
 int nroots = rs->codec->nroots;
 int errs, eras, cutoff;

 if (v >= V_PROGRESS)
  pr_info("Testing beyond error correction capacity...\n");

 for (errs = 1; errs <= nroots; errs++) {
  eras = nroots - 2 * errs + 1;
  if (eras < 0)
   eras = 0;

  cutoff = nroots <= len - errs ? nroots : len - errs;
  for (; eras <= cutoff; eras++)
   test_bc(rs, len, errs, eras, trials, &stat, ws);
 }

 if (v >= V_CSUMMARY) {
  pr_info("  decoder gives up:        %d / %d\n",
    stat.rfail, stat.nwords);
  pr_info("  decoder returns success: %d / %d\n",
    stat.rsuccess, stat.nwords);
  pr_info("    not a codeword:        %d / %d\n",
    stat.noncw, stat.rsuccess);
 }

 if (stat.noncw && v >= V_PROGRESS)
  pr_warn("    FAIL: %d silent failures!\n", stat.noncw);

 return stat.noncw;
}
