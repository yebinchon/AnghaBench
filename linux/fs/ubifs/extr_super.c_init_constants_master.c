
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int min_idx_lebs; } ;
struct ubifs_info {long long rp_size; int main_lebs; int jhead_cnt; long long leb_overhead; long long block_cnt; scalar_t__ leb_size; void* report_rp_size; TYPE_1__ bi; } ;


 int MIN_INDEX_LEBS ;
 long long UBIFS_BLOCK_SHIFT ;
 int ubifs_calc_min_idx_lebs (struct ubifs_info*) ;
 void* ubifs_reported_space (struct ubifs_info*,long long) ;

__attribute__((used)) static void init_constants_master(struct ubifs_info *c)
{
 long long tmp64;

 c->bi.min_idx_lebs = ubifs_calc_min_idx_lebs(c);
 c->report_rp_size = ubifs_reported_space(c, c->rp_size);
 tmp64 = c->main_lebs - 1 - 1 - MIN_INDEX_LEBS - c->jhead_cnt + 1;
 tmp64 *= (long long)c->leb_size - c->leb_overhead;
 tmp64 = ubifs_reported_space(c, tmp64);
 c->block_cnt = tmp64 >> UBIFS_BLOCK_SHIFT;
}
