
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct wspace {int* derrlocs; int* errlocs; int * s; int * r; int * c; int * corr; } ;
struct rs_control {TYPE_1__* codec; } ;
struct estat {int nwords; int dwrong; int wepos; int irv; } ;
struct TYPE_2__ {int nroots; } ;





 int compute_syndrome (struct rs_control*,int *,int,int *) ;
 int decode_rs16 (struct rs_control*,int *,int *,int,int *,int,int*,int ,int *) ;
 int fix_err (int *,int,int *,int*) ;
 int get_rcw_we (struct rs_control*,struct wspace*,int,int,int) ;
 scalar_t__ memcmp (int *,int *,int) ;

__attribute__((used)) static void test_uc(struct rs_control *rs, int len, int errs,
  int eras, int trials, struct estat *stat,
  struct wspace *ws, int method)
{
 int dlen = len - rs->codec->nroots;
 int *derrlocs = ws->derrlocs;
 int *errlocs = ws->errlocs;
 uint16_t *corr = ws->corr;
 uint16_t *c = ws->c;
 uint16_t *r = ws->r;
 uint16_t *s = ws->s;
 int derrs, nerrs;
 int i, j;

 for (j = 0; j < trials; j++) {
  nerrs = get_rcw_we(rs, ws, len, errs, eras);

  switch (method) {
  case 129:
   derrs = decode_rs16(rs, r, r + dlen, dlen,
     ((void*)0), eras, derrlocs, 0, corr);
   fix_err(r, derrs, corr, derrlocs);
   break;
  case 130:
   compute_syndrome(rs, r, len, s);
   derrs = decode_rs16(rs, ((void*)0), ((void*)0), dlen,
     s, eras, derrlocs, 0, corr);
   fix_err(r, derrs, corr, derrlocs);
   break;
  case 128:
   derrs = decode_rs16(rs, r, r + dlen, dlen,
     ((void*)0), eras, derrlocs, 0, ((void*)0));
   break;
  default:
   continue;
  }

  if (derrs != nerrs)
   stat->irv++;

  if (method != 128) {
   for (i = 0; i < derrs; i++) {
    if (errlocs[derrlocs[i]] != 1)
     stat->wepos++;
   }
  }

  if (memcmp(r, c, len * sizeof(*r)))
   stat->dwrong++;
 }
 stat->nwords += trials;
}
