
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct avtab {scalar_t__ nslot; scalar_t__ mask; scalar_t__ nel; int htable; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ MAX_AVTAB_HASH_BUCKETS ;
 int kvcalloc (scalar_t__,int,int ) ;
 int pr_debug (char*,scalar_t__,scalar_t__) ;

int avtab_alloc(struct avtab *h, u32 nrules)
{
 u32 mask = 0;
 u32 shift = 0;
 u32 work = nrules;
 u32 nslot = 0;

 if (nrules == 0)
  goto avtab_alloc_out;

 while (work) {
  work = work >> 1;
  shift++;
 }
 if (shift > 2)
  shift = shift - 2;
 nslot = 1 << shift;
 if (nslot > MAX_AVTAB_HASH_BUCKETS)
  nslot = MAX_AVTAB_HASH_BUCKETS;
 mask = nslot - 1;

 h->htable = kvcalloc(nslot, sizeof(void *), GFP_KERNEL);
 if (!h->htable)
  return -ENOMEM;

 avtab_alloc_out:
 h->nel = 0;
 h->nslot = nslot;
 h->mask = mask;
 pr_debug("SELinux: %d avtab hash slots, %d rules.\n",
        h->nslot, nrules);
 return 0;
}
