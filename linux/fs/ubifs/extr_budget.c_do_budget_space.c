
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int min_idx_lebs; long long data_growth; long long dd_growth; } ;
struct TYPE_3__ {int idx_lebs; int empty_lebs; int taken_empty_lebs; } ;
struct ubifs_info {int freeable_cnt; int idx_gc_cnt; long long rp_size; TYPE_2__ bi; TYPE_1__ lst; } ;


 int ENOSPC ;
 int can_use_rp (struct ubifs_info*) ;
 int dbg_budg (char*,long long,long long,...) ;
 long long ubifs_calc_available (struct ubifs_info*,int) ;
 int ubifs_calc_min_idx_lebs (struct ubifs_info*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int do_budget_space(struct ubifs_info *c)
{
 long long outstanding, available;
 int lebs, rsvd_idx_lebs, min_idx_lebs;


 min_idx_lebs = ubifs_calc_min_idx_lebs(c);


 if (min_idx_lebs > c->lst.idx_lebs)
  rsvd_idx_lebs = min_idx_lebs - c->lst.idx_lebs;
 else
  rsvd_idx_lebs = 0;
 lebs = c->lst.empty_lebs + c->freeable_cnt + c->idx_gc_cnt -
        c->lst.taken_empty_lebs;
 if (unlikely(rsvd_idx_lebs > lebs)) {
  dbg_budg("out of indexing space: min_idx_lebs %d (old %d), rsvd_idx_lebs %d",
    min_idx_lebs, c->bi.min_idx_lebs, rsvd_idx_lebs);
  return -ENOSPC;
 }

 available = ubifs_calc_available(c, min_idx_lebs);
 outstanding = c->bi.data_growth + c->bi.dd_growth;

 if (unlikely(available < outstanding)) {
  dbg_budg("out of data space: available %lld, outstanding %lld",
    available, outstanding);
  return -ENOSPC;
 }

 if (available - outstanding <= c->rp_size && !can_use_rp(c))
  return -ENOSPC;

 c->bi.min_idx_lebs = min_idx_lebs;
 return 0;
}
