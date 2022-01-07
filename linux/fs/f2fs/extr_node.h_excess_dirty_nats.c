
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct f2fs_sb_info {int dummy; } ;
struct TYPE_2__ {int dirty_nat_cnt; int max_nid; int dirty_nats_ratio; } ;


 TYPE_1__* NM_I (struct f2fs_sb_info*) ;

__attribute__((used)) static inline bool excess_dirty_nats(struct f2fs_sb_info *sbi)
{
 return NM_I(sbi)->dirty_nat_cnt >= NM_I(sbi)->max_nid *
     NM_I(sbi)->dirty_nats_ratio / 100;
}
