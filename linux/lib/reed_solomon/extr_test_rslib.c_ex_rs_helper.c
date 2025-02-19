
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wspace {int dummy; } ;
struct rs_control {TYPE_1__* codec; } ;
struct estat {int dwrong; int irv; char const* const wepos; int nwords; int member_3; int member_2; int member_1; int member_0; } ;
struct TYPE_2__ {int nroots; } ;


 int IN_PLACE ;
 scalar_t__ V_CSUMMARY ;
 scalar_t__ V_PROGRESS ;
 int pr_info (char*,...) ;
 int pr_warn (char*,int) ;
 int test_uc (struct rs_control*,int,int,int,int,struct estat*,struct wspace*,int) ;
 scalar_t__ v ;

__attribute__((used)) static int ex_rs_helper(struct rs_control *rs, struct wspace *ws,
   int len, int trials, int method)
{
 static const char * const desc[] = {
  "Testing correction buffer interface...",
  "Testing with caller provided syndrome...",
  "Testing in-place interface..."
 };

 struct estat stat = {0, 0, 0, 0};
 int nroots = rs->codec->nroots;
 int errs, eras, retval;

 if (v >= V_PROGRESS)
  pr_info("  %s\n", desc[method]);

 for (errs = 0; errs <= nroots / 2; errs++)
  for (eras = 0; eras <= nroots - 2 * errs; eras++)
   test_uc(rs, len, errs, eras, trials, &stat, ws, method);

 if (v >= V_CSUMMARY) {
  pr_info("    Decodes wrong:        %d / %d\n",
    stat.dwrong, stat.nwords);
  pr_info("    Wrong return value:   %d / %d\n",
    stat.irv, stat.nwords);
  if (method != IN_PLACE)
   pr_info("    Wrong error position: %d\n", stat.wepos);
 }

 retval = stat.dwrong + stat.wepos + stat.irv;
 if (retval && v >= V_PROGRESS)
  pr_warn("    FAIL: %d decoding failures!\n", retval);

 return retval;
}
