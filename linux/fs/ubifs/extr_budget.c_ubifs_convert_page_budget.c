
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int idx_growth; int min_idx_lebs; scalar_t__ page_budget; int dd_growth; int data_growth; } ;
struct ubifs_info {int max_idx_node_sz; int space_lock; TYPE_1__ bi; } ;


 int UBIFS_BLOCKS_PER_PAGE_SHIFT ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int ubifs_calc_min_idx_lebs (struct ubifs_info*) ;

void ubifs_convert_page_budget(struct ubifs_info *c)
{
 spin_lock(&c->space_lock);

 c->bi.idx_growth -= c->max_idx_node_sz << UBIFS_BLOCKS_PER_PAGE_SHIFT;

 c->bi.data_growth -= c->bi.page_budget;

 c->bi.dd_growth += c->bi.page_budget;

 c->bi.min_idx_lebs = ubifs_calc_min_idx_lebs(c);
 spin_unlock(&c->space_lock);
}
