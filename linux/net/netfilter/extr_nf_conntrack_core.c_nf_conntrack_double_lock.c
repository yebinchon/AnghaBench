
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;


 unsigned int CONNTRACK_LOCKS ;
 int SINGLE_DEPTH_NESTING ;
 int nf_conntrack_double_unlock (unsigned int,unsigned int) ;
 int nf_conntrack_generation ;
 int nf_conntrack_lock (int *) ;
 int * nf_conntrack_locks ;
 scalar_t__ read_seqcount_retry (int *,unsigned int) ;
 int spin_lock_nested (int *,int ) ;

__attribute__((used)) static bool nf_conntrack_double_lock(struct net *net, unsigned int h1,
         unsigned int h2, unsigned int sequence)
{
 h1 %= CONNTRACK_LOCKS;
 h2 %= CONNTRACK_LOCKS;
 if (h1 <= h2) {
  nf_conntrack_lock(&nf_conntrack_locks[h1]);
  if (h1 != h2)
   spin_lock_nested(&nf_conntrack_locks[h2],
      SINGLE_DEPTH_NESTING);
 } else {
  nf_conntrack_lock(&nf_conntrack_locks[h2]);
  spin_lock_nested(&nf_conntrack_locks[h1],
     SINGLE_DEPTH_NESTING);
 }
 if (read_seqcount_retry(&nf_conntrack_generation, sequence)) {
  nf_conntrack_double_unlock(h1, h2);
  return 1;
 }
 return 0;
}
