
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hlist_head {int dummy; } ;


 unsigned int PAGE_SIZE ;
 int free_pages (unsigned long,int ) ;
 int get_order (unsigned int) ;
 scalar_t__ hashdist ;
 int kfree (struct hlist_head*) ;
 int vfree (struct hlist_head*) ;

void xfrm_hash_free(struct hlist_head *n, unsigned int sz)
{
 if (sz <= PAGE_SIZE)
  kfree(n);
 else if (hashdist)
  vfree(n);
 else
  free_pages((unsigned long)n, get_order(sz));
}
