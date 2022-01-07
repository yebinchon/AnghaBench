
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct wspace {int* derrlocs; int * r; int * corr; } ;
struct rs_control {TYPE_1__* codec; } ;
struct bcstat {int nwords; int rfail; int noncw; int rsuccess; } ;
struct TYPE_2__ {int nroots; } ;


 int decode_rs16 (struct rs_control*,int *,int *,int,int *,int,int*,int ,int *) ;
 int encode_rs16 (struct rs_control*,int *,int,int *,int ) ;
 int fix_err (int *,int,int *,int*) ;
 int get_rcw_we (struct rs_control*,struct wspace*,int,int,int) ;
 scalar_t__ memcmp (int *,int *,int) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static void test_bc(struct rs_control *rs, int len, int errs,
  int eras, int trials, struct bcstat *stat,
  struct wspace *ws)
{
 int nroots = rs->codec->nroots;
 int dlen = len - nroots;
 int *derrlocs = ws->derrlocs;
 uint16_t *corr = ws->corr;
 uint16_t *r = ws->r;
 int derrs, j;

 for (j = 0; j < trials; j++) {
  get_rcw_we(rs, ws, len, errs, eras);
  derrs = decode_rs16(rs, r, r + dlen, dlen,
    ((void*)0), eras, derrlocs, 0, corr);
  fix_err(r, derrs, corr, derrlocs);

  if (derrs >= 0) {
   stat->rsuccess++;
   memset(corr, 0, nroots * sizeof(*corr));
   encode_rs16(rs, r, dlen, corr, 0);

   if (memcmp(r + dlen, corr, nroots * sizeof(*corr)))
    stat->noncw++;
  } else {
   stat->rfail++;
  }
 }
 stat->nwords += trials;
}
