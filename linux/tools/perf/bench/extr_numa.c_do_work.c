
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef long u32 ;
struct TYPE_3__ {long nr_loops; int data_backwards; scalar_t__ data_zero_memset; scalar_t__ data_rand_walk; } ;
struct TYPE_4__ {TYPE_1__ p; } ;


 int BUG_ON (int) ;
 int access_data (int *,int ) ;
 int bzero (int *,long) ;
 TYPE_2__* g ;
 long lfsr_32 (long) ;
 long min (long,long) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static u64 do_work(u8 *__data, long bytes, int nr, int nr_max, int loop, u64 val)
{
 long words = bytes/sizeof(u64);
 u64 *data = (void *)__data;
 long chunk_0, chunk_1;
 u64 *d0, *d, *d1;
 long off;
 long i;

 BUG_ON(!data && words);
 BUG_ON(data && !words);

 if (!data)
  return val;


 if (g->p.data_zero_memset && !g->p.data_rand_walk) {
  bzero(data, bytes);
  return val;
 }


 chunk_0 = words/nr_max;
 chunk_1 = words/g->p.nr_loops;
 off = nr*chunk_0 + loop*chunk_1;

 while (off >= words)
  off -= words;

 if (g->p.data_rand_walk) {
  u32 lfsr = nr + loop + val;
  int j;

  for (i = 0; i < words/1024; i++) {
   long start, end;

   lfsr = lfsr_32(lfsr);

   start = lfsr % words;
   end = min(start + 1024, words-1);

   if (g->p.data_zero_memset) {
    bzero(data + start, (end-start) * sizeof(u64));
   } else {
    for (j = start; j < end; j++)
     val = access_data(data + j, val);
   }
  }
 } else if (!g->p.data_backwards || (nr + loop) & 1) {

  d0 = data + off;
  d = data + off + 1;
  d1 = data + words;


  for (;;) {
   if (unlikely(d >= d1))
    d = data;
   if (unlikely(d == d0))
    break;

   val = access_data(d, val);

   d++;
  }
 } else {


  d0 = data + off;
  d = data + off - 1;
  d1 = data + words;


  for (;;) {
   if (unlikely(d < data))
    d = data + words-1;
   if (unlikely(d == d0))
    break;

   val = access_data(d, val);

   d--;
  }
 }

 return val;
}
