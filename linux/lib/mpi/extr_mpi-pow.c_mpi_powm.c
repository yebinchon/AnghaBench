
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct karatsuba_ctx {int dummy; } ;
typedef int mpi_size_t ;
typedef int* mpi_ptr_t ;
typedef int mpi_limb_t ;
typedef scalar_t__ mpi_limb_signed_t ;
struct TYPE_8__ {int nlimbs; int sign; int* d; int alloced; } ;
typedef TYPE_1__* MPI ;


 int BITS_PER_MPI_LIMB ;
 int BUG_ON (int*) ;
 int EINVAL ;
 int ENOMEM ;
 int KARATSUBA_THRESHOLD ;
 int MPN_COPY (int*,int*,int) ;
 int MPN_NORMALIZE (int*,int) ;
 int cond_resched () ;
 int count_leading_zeros (int) ;
 int* mpi_alloc_limb_space (int) ;
 int mpi_assign_limb_space (TYPE_1__*,int*,int) ;
 int mpi_free_limb_space (int*) ;
 scalar_t__ mpi_resize (TYPE_1__*,int) ;
 int mpih_sqr_n (int*,int*,int,int*) ;
 int mpih_sqr_n_basecase (int*,int*,int) ;
 int mpihelp_divrem (int*,int ,int*,int,int*,int) ;
 int mpihelp_lshift (int*,int*,int,int) ;
 scalar_t__ mpihelp_mul (int*,int*,int,int*,int,int*) ;
 scalar_t__ mpihelp_mul_karatsuba_case (int*,int*,int,int*,int,struct karatsuba_ctx*) ;
 int mpihelp_release_karatsuba_ctx (struct karatsuba_ctx*) ;
 int mpihelp_rshift (int*,int*,int,int) ;
 int mpihelp_sub (int*,int*,int,int*,int) ;

int mpi_powm(MPI res, MPI base, MPI exp, MPI mod)
{
 mpi_ptr_t mp_marker = ((void*)0), bp_marker = ((void*)0), ep_marker = ((void*)0);
 struct karatsuba_ctx karactx = {};
 mpi_ptr_t xp_marker = ((void*)0);
 mpi_ptr_t tspace = ((void*)0);
 mpi_ptr_t rp, ep, mp, bp;
 mpi_size_t esize, msize, bsize, rsize;
 int msign, bsign, rsign;
 mpi_size_t size;
 int mod_shift_cnt;
 int negative_result;
 int assign_rp = 0;
 mpi_size_t tsize = 0;

 int rc = -ENOMEM;

 esize = exp->nlimbs;
 msize = mod->nlimbs;
 size = 2 * msize;
 msign = mod->sign;

 rp = res->d;
 ep = exp->d;

 if (!msize)
  return -EINVAL;

 if (!esize) {


  res->nlimbs = (msize == 1 && mod->d[0] == 1) ? 0 : 1;
  if (res->nlimbs) {
   if (mpi_resize(res, 1) < 0)
    goto enomem;
   rp = res->d;
   rp[0] = 1;
  }
  res->sign = 0;
  goto leave;
 }





 mp = mp_marker = mpi_alloc_limb_space(msize);
 if (!mp)
  goto enomem;
 mod_shift_cnt = count_leading_zeros(mod->d[msize - 1]);
 if (mod_shift_cnt)
  mpihelp_lshift(mp, mod->d, msize, mod_shift_cnt);
 else
  MPN_COPY(mp, mod->d, msize);

 bsize = base->nlimbs;
 bsign = base->sign;
 if (bsize > msize) {


  bp = bp_marker = mpi_alloc_limb_space(bsize + 1);
  if (!bp)
   goto enomem;
  MPN_COPY(bp, base->d, bsize);


  mpihelp_divrem(bp + msize, 0, bp, bsize, mp, msize);
  bsize = msize;


  MPN_NORMALIZE(bp, bsize);
 } else
  bp = base->d;

 if (!bsize) {
  res->nlimbs = 0;
  res->sign = 0;
  goto leave;
 }

 if (res->alloced < size) {



  if (rp == ep || rp == mp || rp == bp) {
   rp = mpi_alloc_limb_space(size);
   if (!rp)
    goto enomem;
   assign_rp = 1;
  } else {
   if (mpi_resize(res, size) < 0)
    goto enomem;
   rp = res->d;
  }
 } else {
  if (rp == bp) {

   BUG_ON(bp_marker);
   bp = bp_marker = mpi_alloc_limb_space(bsize);
   if (!bp)
    goto enomem;
   MPN_COPY(bp, rp, bsize);
  }
  if (rp == ep) {

   ep = ep_marker = mpi_alloc_limb_space(esize);
   if (!ep)
    goto enomem;
   MPN_COPY(ep, rp, esize);
  }
  if (rp == mp) {

   BUG_ON(mp_marker);
   mp = mp_marker = mpi_alloc_limb_space(msize);
   if (!mp)
    goto enomem;
   MPN_COPY(mp, rp, msize);
  }
 }

 MPN_COPY(rp, bp, bsize);
 rsize = bsize;
 rsign = bsign;

 {
  mpi_size_t i;
  mpi_ptr_t xp;
  int c;
  mpi_limb_t e;
  mpi_limb_t carry_limb;

  xp = xp_marker = mpi_alloc_limb_space(2 * (msize + 1));
  if (!xp)
   goto enomem;

  negative_result = (ep[0] & 1) && base->sign;

  i = esize - 1;
  e = ep[i];
  c = count_leading_zeros(e);
  e = (e << c) << 1;
  c = BITS_PER_MPI_LIMB - 1 - c;
  for (;;) {
   while (c) {
    mpi_ptr_t tp;
    mpi_size_t xsize;


    if (rsize < KARATSUBA_THRESHOLD)
     mpih_sqr_n_basecase(xp, rp, rsize);
    else {
     if (!tspace) {
      tsize = 2 * rsize;
      tspace =
          mpi_alloc_limb_space(tsize);
      if (!tspace)
       goto enomem;
     } else if (tsize < (2 * rsize)) {
      mpi_free_limb_space(tspace);
      tsize = 2 * rsize;
      tspace =
          mpi_alloc_limb_space(tsize);
      if (!tspace)
       goto enomem;
     }
     mpih_sqr_n(xp, rp, rsize, tspace);
    }

    xsize = 2 * rsize;
    if (xsize > msize) {
     mpihelp_divrem(xp + msize, 0, xp, xsize,
             mp, msize);
     xsize = msize;
    }

    tp = rp;
    rp = xp;
    xp = tp;
    rsize = xsize;

    if ((mpi_limb_signed_t) e < 0) {

     if (bsize < KARATSUBA_THRESHOLD) {
      mpi_limb_t tmp;
      if (mpihelp_mul
          (xp, rp, rsize, bp, bsize,
           &tmp) < 0)
       goto enomem;
     } else {
      if (mpihelp_mul_karatsuba_case
          (xp, rp, rsize, bp, bsize,
           &karactx) < 0)
       goto enomem;
     }

     xsize = rsize + bsize;
     if (xsize > msize) {
      mpihelp_divrem(xp + msize, 0,
              xp, xsize, mp,
              msize);
      xsize = msize;
     }

     tp = rp;
     rp = xp;
     xp = tp;
     rsize = xsize;
    }
    e <<= 1;
    c--;
    cond_resched();
   }

   i--;
   if (i < 0)
    break;
   e = ep[i];
   c = BITS_PER_MPI_LIMB;
  }







  if (mod_shift_cnt) {
   carry_limb =
       mpihelp_lshift(res->d, rp, rsize, mod_shift_cnt);
   rp = res->d;
   if (carry_limb) {
    rp[rsize] = carry_limb;
    rsize++;
   }
  } else {
   MPN_COPY(res->d, rp, rsize);
   rp = res->d;
  }

  if (rsize >= msize) {
   mpihelp_divrem(rp + msize, 0, rp, rsize, mp, msize);
   rsize = msize;
  }


  if (mod_shift_cnt)
   mpihelp_rshift(rp, rp, rsize, mod_shift_cnt);
  MPN_NORMALIZE(rp, rsize);
 }

 if (negative_result && rsize) {
  if (mod_shift_cnt)
   mpihelp_rshift(mp, mp, msize, mod_shift_cnt);
  mpihelp_sub(rp, mp, msize, rp, rsize);
  rsize = msize;
  rsign = msign;
  MPN_NORMALIZE(rp, rsize);
 }
 res->nlimbs = rsize;
 res->sign = rsign;

leave:
 rc = 0;
enomem:
 mpihelp_release_karatsuba_ctx(&karactx);
 if (assign_rp)
  mpi_assign_limb_space(res, rp, size);
 if (mp_marker)
  mpi_free_limb_space(mp_marker);
 if (bp_marker)
  mpi_free_limb_space(bp_marker);
 if (ep_marker)
  mpi_free_limb_space(ep_marker);
 if (xp_marker)
  mpi_free_limb_space(xp_marker);
 if (tspace)
  mpi_free_limb_space(tspace);
 return rc;
}
