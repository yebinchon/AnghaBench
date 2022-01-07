
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct f2fs_sb_info {int dummy; } ;
struct TYPE_2__ {long* nid_cnt; } ;


 size_t FREE_NID ;
 long MAX_FREE_NIDS ;
 TYPE_1__* NM_I (struct f2fs_sb_info*) ;

__attribute__((used)) static unsigned long __count_free_nids(struct f2fs_sb_info *sbi)
{
 long count = NM_I(sbi)->nid_cnt[FREE_NID] - MAX_FREE_NIDS;

 return count > 0 ? count : 0;
}
