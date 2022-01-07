
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inet_hashinfo {unsigned int ehash_locks_mask; int * ehash_locks; scalar_t__ ehash_mask; } ;
typedef int spinlock_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 unsigned int L1_CACHE_BYTES ;
 int * kvmalloc_array (unsigned int,unsigned int,int ) ;
 unsigned int max (unsigned int,unsigned int) ;
 unsigned int min (unsigned int,scalar_t__) ;
 unsigned int num_possible_cpus () ;
 unsigned int roundup_pow_of_two (unsigned int) ;
 int spin_lock_init (int *) ;

int inet_ehash_locks_alloc(struct inet_hashinfo *hashinfo)
{
 unsigned int locksz = sizeof(spinlock_t);
 unsigned int i, nblocks = 1;

 if (locksz != 0) {

  nblocks = max(2U * L1_CACHE_BYTES / locksz, 1U);
  nblocks = roundup_pow_of_two(nblocks * num_possible_cpus());


  nblocks = min(nblocks, hashinfo->ehash_mask + 1);

  hashinfo->ehash_locks = kvmalloc_array(nblocks, locksz, GFP_KERNEL);
  if (!hashinfo->ehash_locks)
   return -ENOMEM;

  for (i = 0; i < nblocks; i++)
   spin_lock_init(&hashinfo->ehash_locks[i]);
 }
 hashinfo->ehash_locks_mask = nblocks - 1;
 return 0;
}
