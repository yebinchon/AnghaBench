
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bch_control {int dummy; } ;


 int BCH_MAX_M ;
 int GF_M (struct bch_control*) ;
 int const parity (unsigned int) ;

__attribute__((used)) static int solve_linear_system(struct bch_control *bch, unsigned int *rows,
          unsigned int *sol, int nsol)
{
 const int m = GF_M(bch);
 unsigned int tmp, mask;
 int rem, c, r, p, k, param[BCH_MAX_M];

 k = 0;
 mask = 1 << m;


 for (c = 0; c < m; c++) {
  rem = 0;
  p = c-k;

  for (r = p; r < m; r++) {
   if (rows[r] & mask) {
    if (r != p) {
     tmp = rows[r];
     rows[r] = rows[p];
     rows[p] = tmp;
    }
    rem = r+1;
    break;
   }
  }
  if (rem) {

   tmp = rows[p];
   for (r = rem; r < m; r++) {
    if (rows[r] & mask)
     rows[r] ^= tmp;
   }
  } else {

   param[k++] = c;
  }
  mask >>= 1;
 }

 if (k > 0) {
  p = k;
  for (r = m-1; r >= 0; r--) {
   if ((r > m-1-k) && rows[r])

    return 0;

   rows[r] = (p && (r == param[p-1])) ?
    p--, 1u << (m-r) : rows[r-p];
  }
 }

 if (nsol != (1 << k))

  return 0;

 for (p = 0; p < nsol; p++) {

  for (c = 0; c < k; c++)
   rows[param[c]] = (rows[param[c]] & ~1)|((p >> c) & 1);


  tmp = 0;
  for (r = m-1; r >= 0; r--) {
   mask = rows[r] & (tmp|1);
   tmp |= parity(mask) << (m-r);
  }
  sol[p] = tmp >> 1;
 }
 return nsol;
}
