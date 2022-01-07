
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct wspace {int dummy; } ;
struct rs_control {int codec; } ;
struct etab {int symsize; int nroots; int ntrials; int prim; int fcs; int genpoly; } ;
struct TYPE_3__ {int mult; int shift; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int ENOMEM ;
 scalar_t__ V_PROGRESS ;
 struct wspace* alloc_ws (int ) ;
 scalar_t__ bc ;
 int exercise_rs (struct rs_control*,struct wspace*,int,int ) ;
 int exercise_rs_bc (struct rs_control*,struct wspace*,int,int ) ;
 int free_rs (struct rs_control*) ;
 int free_ws (struct wspace*) ;
 struct rs_control* init_rs (int,int ,int ,int ,int) ;
 TYPE_1__* pad_coef ;
 int pr_info (char*,int,int,int) ;
 scalar_t__ v ;

__attribute__((used)) static int run_exercise(struct etab *e)
{
 int nn = (1 << e->symsize) - 1;
 int kk = nn - e->nroots;
 struct rs_control *rsc;
 int retval = -ENOMEM;
 int max_pad = kk - 1;
 int prev_pad = -1;
 struct wspace *ws;
 int i;

 rsc = init_rs(e->symsize, e->genpoly, e->fcs, e->prim, e->nroots);
 if (!rsc)
  return retval;

 ws = alloc_ws(rsc->codec);
 if (!ws)
  goto err;

 retval = 0;
 for (i = 0; i < ARRAY_SIZE(pad_coef); i++) {
  int pad = (pad_coef[i].mult * max_pad) >> pad_coef[i].shift;
  int len = nn - pad;

  if (pad == prev_pad)
   continue;

  prev_pad = pad;
  if (v >= V_PROGRESS) {
   pr_info("Testing (%d,%d)_%d code...\n",
     len, kk - pad, nn + 1);
  }

  retval |= exercise_rs(rsc, ws, len, e->ntrials);
  if (bc)
   retval |= exercise_rs_bc(rsc, ws, len, e->ntrials);
 }

 free_ws(ws);

err:
 free_rs(rsc);
 return retval;
}
