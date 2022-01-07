
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void SWAP_BYTES (void*,void*,int) ;
 void SWAP_WORDS_32 (void*,void*,int) ;
 void SWAP_WORDS_64 (void*,void*,int) ;
 scalar_t__ do_cmp (void*,void*,int (*) (void const*,void const*,void const*),void const*) ;
 int do_swap (void*,void*,size_t,void (*) (void*,void*,int)) ;
 scalar_t__ is_aligned (void*,size_t,int) ;
 size_t parent (size_t,unsigned int const,size_t) ;

void sort_r(void *base, size_t num, size_t size,
     int (*cmp_func)(const void *, const void *, const void *),
     void (*swap_func)(void *, void *, int size),
     const void *priv)
{

 size_t n = num * size, a = (num/2) * size;
 const unsigned int lsbit = size & -size;

 if (!a)
  return;

 if (!swap_func) {
  if (is_aligned(base, size, 8))
   swap_func = SWAP_WORDS_64;
  else if (is_aligned(base, size, 4))
   swap_func = SWAP_WORDS_32;
  else
   swap_func = SWAP_BYTES;
 }
 for (;;) {
  size_t b, c, d;

  if (a)
   a -= size;
  else if (n -= size)
   do_swap(base, base + n, size, swap_func);
  else
   break;
  for (b = a; c = 2*b + size, (d = c + size) < n;)
   b = do_cmp(base + c, base + d, cmp_func, priv) >= 0 ? c : d;
  if (d == n)
   b = c;


  while (b != a && do_cmp(base + a, base + b, cmp_func, priv) >= 0)
   b = parent(b, lsbit, size);
  c = b;
  while (b != a) {
   b = parent(b, lsbit, size);
   do_swap(base + b, base + c, size, swap_func);
  }
 }
}
