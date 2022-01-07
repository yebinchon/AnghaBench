
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {long long old_idx_sz; long long idx_growth; long long uncommitted_idx; } ;
struct ubifs_info {scalar_t__ idx_leb_size; TYPE_1__ bi; } ;


 int MIN_INDEX_LEBS ;
 int div_u64 (scalar_t__,scalar_t__) ;

int ubifs_calc_min_idx_lebs(struct ubifs_info *c)
{
 int idx_lebs;
 long long idx_size;

 idx_size = c->bi.old_idx_sz + c->bi.idx_growth + c->bi.uncommitted_idx;

 idx_size += idx_size << 1;





 idx_lebs = div_u64(idx_size + c->idx_leb_size - 1, c->idx_leb_size);




 idx_lebs += 1;
 if (idx_lebs < MIN_INDEX_LEBS)
  idx_lebs = MIN_INDEX_LEBS;
 return idx_lebs;
}
