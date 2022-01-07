
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ idx_lebs; int empty_lebs; int taken_empty_lebs; } ;
struct TYPE_3__ {scalar_t__ min_idx_lebs; long long data_growth; long long dd_growth; } ;
struct ubifs_info {int freeable_cnt; int idx_gc_cnt; int dark_wm; int leb_overhead; TYPE_2__ lst; TYPE_1__ bi; } ;


 int ubifs_assert (struct ubifs_info*,int) ;
 long long ubifs_calc_available (struct ubifs_info*,scalar_t__) ;
 scalar_t__ ubifs_calc_min_idx_lebs (struct ubifs_info*) ;
 long long ubifs_reported_space (struct ubifs_info*,long long) ;

long long ubifs_get_free_space_nolock(struct ubifs_info *c)
{
 int rsvd_idx_lebs, lebs;
 long long available, outstanding, free;

 ubifs_assert(c, c->bi.min_idx_lebs == ubifs_calc_min_idx_lebs(c));
 outstanding = c->bi.data_growth + c->bi.dd_growth;
 available = ubifs_calc_available(c, c->bi.min_idx_lebs);
 if (c->bi.min_idx_lebs > c->lst.idx_lebs)
  rsvd_idx_lebs = c->bi.min_idx_lebs - c->lst.idx_lebs;
 else
  rsvd_idx_lebs = 0;
 lebs = c->lst.empty_lebs + c->freeable_cnt + c->idx_gc_cnt -
        c->lst.taken_empty_lebs;
 lebs -= rsvd_idx_lebs;
 available += lebs * (c->dark_wm - c->leb_overhead);

 if (available > outstanding)
  free = ubifs_reported_space(c, available - outstanding);
 else
  free = 0;
 return free;
}
