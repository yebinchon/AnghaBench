
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crush_work_bucket {int perm_x; int perm_n; unsigned int* perm; } ;
struct crush_bucket {int size; int* items; int id; int hash; } ;
typedef int __u32 ;


 unsigned int crush_hash32_3 (int ,int,int ,unsigned int) ;
 int dprintk (char*,unsigned int,unsigned int,...) ;

__attribute__((used)) static int bucket_perm_choose(const struct crush_bucket *bucket,
         struct crush_work_bucket *work,
         int x, int r)
{
 unsigned int pr = r % bucket->size;
 unsigned int i, s;


 if (work->perm_x != (__u32)x || work->perm_n == 0) {
  dprintk("bucket %d new x=%d\n", bucket->id, x);
  work->perm_x = x;


  if (pr == 0) {
   s = crush_hash32_3(bucket->hash, x, bucket->id, 0) %
    bucket->size;
   work->perm[0] = s;
   work->perm_n = 0xffff;
   goto out;
  }

  for (i = 0; i < bucket->size; i++)
   work->perm[i] = i;
  work->perm_n = 0;
 } else if (work->perm_n == 0xffff) {

  for (i = 1; i < bucket->size; i++)
   work->perm[i] = i;
  work->perm[work->perm[0]] = 0;
  work->perm_n = 1;
 }


 for (i = 0; i < work->perm_n; i++)
  dprintk(" perm_choose have %d: %d\n", i, work->perm[i]);
 while (work->perm_n <= pr) {
  unsigned int p = work->perm_n;

  if (p < bucket->size - 1) {
   i = crush_hash32_3(bucket->hash, x, bucket->id, p) %
    (bucket->size - p);
   if (i) {
    unsigned int t = work->perm[p + i];
    work->perm[p + i] = work->perm[p];
    work->perm[p] = t;
   }
   dprintk(" perm_choose swap %d with %d\n", p, p+i);
  }
  work->perm_n++;
 }
 for (i = 0; i < bucket->size; i++)
  dprintk(" perm_choose  %d: %d\n", i, work->perm[i]);

 s = work->perm[pr];
out:
 dprintk(" perm_choose %d sz=%d x=%d r=%d (%d) s=%d\n", bucket->id,
  bucket->size, x, r, pr, s);
 return bucket->items[s];
}
