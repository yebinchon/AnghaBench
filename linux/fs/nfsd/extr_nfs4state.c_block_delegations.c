
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct knfsd_fh {int fh_size; int fh_base; } ;
struct bloom_pair {size_t new; scalar_t__ entries; int swap_time; int * set; } ;


 int __set_bit (int,int ) ;
 struct bloom_pair blocked_delegations ;
 int blocked_delegations_lock ;
 int jhash (int *,int ,int ) ;
 int seconds_since_boot () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void block_delegations(struct knfsd_fh *fh)
{
 u32 hash;
 struct bloom_pair *bd = &blocked_delegations;

 hash = jhash(&fh->fh_base, fh->fh_size, 0);

 spin_lock(&blocked_delegations_lock);
 __set_bit(hash&255, bd->set[bd->new]);
 __set_bit((hash>>8)&255, bd->set[bd->new]);
 __set_bit((hash>>16)&255, bd->set[bd->new]);
 if (bd->entries == 0)
  bd->swap_time = seconds_since_boot();
 bd->entries += 1;
 spin_unlock(&blocked_delegations_lock);
}
