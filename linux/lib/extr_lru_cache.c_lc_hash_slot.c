
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lru_cache {unsigned int nr_elements; struct hlist_head* lc_slot; } ;
struct hlist_head {int dummy; } ;



__attribute__((used)) static struct hlist_head *lc_hash_slot(struct lru_cache *lc, unsigned int enr)
{
 return lc->lc_slot + (enr % lc->nr_elements);
}
