
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct wspace {int* derrlocs; int* errlocs; int* c; int* r; } ;
struct rs_control {TYPE_1__* codec; } ;
struct TYPE_2__ {int nroots; int nn; } ;


 int encode_rs16 (struct rs_control*,int*,int,int*,int ) ;
 scalar_t__ ewsc ;
 int memcpy (int*,int*,int) ;
 int memset (int*,int ,int) ;
 int prandom_u32 () ;

__attribute__((used)) static int get_rcw_we(struct rs_control *rs, struct wspace *ws,
   int len, int errs, int eras)
{
 int nroots = rs->codec->nroots;
 int *derrlocs = ws->derrlocs;
 int *errlocs = ws->errlocs;
 int dlen = len - nroots;
 int nn = rs->codec->nn;
 uint16_t *c = ws->c;
 uint16_t *r = ws->r;
 int errval;
 int errloc;
 int i;


 for (i = 0; i < dlen; i++)
  c[i] = prandom_u32() & nn;

 memset(c + dlen, 0, nroots * sizeof(*c));
 encode_rs16(rs, c, dlen, c + dlen, 0);


 memcpy(r, c, len * sizeof(*r));
 memset(errlocs, 0, len * sizeof(*errlocs));
 memset(derrlocs, 0, nroots * sizeof(*derrlocs));


 for (i = 0; i < errs; i++) {
  do {

   errval = prandom_u32() & nn;
  } while (errval == 0);

  do {

   errloc = prandom_u32() % len;
  } while (errlocs[errloc] != 0);

  errlocs[errloc] = 1;
  r[errloc] ^= errval;
 }


 for (i = 0; i < eras; i++) {
  do {

   errloc = prandom_u32() % len;
  } while (errlocs[errloc] != 0);

  derrlocs[i] = errloc;

  if (ewsc && (prandom_u32() & 1)) {

   errlocs[errloc] = 2;
  } else {

   do {

    errval = prandom_u32() & nn;
   } while (errval == 0);

   errlocs[errloc] = 1;
   r[errloc] ^= errval;
   errs++;
  }
 }

 return errs;
}
