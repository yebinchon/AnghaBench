
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ext4_sb_info {scalar_t__ s_mb_last_group; int s_md_lock; int s_mb_last_start; } ;
struct ext4_buddy {scalar_t__ bd_group; int bd_buddy_page; int bd_bitmap_page; } ;
struct TYPE_4__ {scalar_t__ fe_group; int fe_start; int fe_logical; int fe_len; } ;
struct TYPE_3__ {int fe_logical; int fe_len; } ;
struct ext4_allocation_context {scalar_t__ ac_status; int ac_tail; int ac_buddy; int ac_flags; TYPE_2__ ac_f_ex; int ac_buddy_page; int ac_bitmap_page; TYPE_2__ ac_b_ex; TYPE_1__ ac_g_ex; int ac_sb; } ;


 scalar_t__ AC_STATUS_FOUND ;
 int BUG_ON (int) ;
 int EXT4_MB_STREAM_ALLOC ;
 struct ext4_sb_info* EXT4_SB (int ) ;
 int get_page (int ) ;
 int mb_mark_used (struct ext4_buddy*,TYPE_2__*) ;
 int min (int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void ext4_mb_use_best_found(struct ext4_allocation_context *ac,
     struct ext4_buddy *e4b)
{
 struct ext4_sb_info *sbi = EXT4_SB(ac->ac_sb);
 int ret;

 BUG_ON(ac->ac_b_ex.fe_group != e4b->bd_group);
 BUG_ON(ac->ac_status == AC_STATUS_FOUND);

 ac->ac_b_ex.fe_len = min(ac->ac_b_ex.fe_len, ac->ac_g_ex.fe_len);
 ac->ac_b_ex.fe_logical = ac->ac_g_ex.fe_logical;
 ret = mb_mark_used(e4b, &ac->ac_b_ex);



 ac->ac_f_ex = ac->ac_b_ex;

 ac->ac_status = AC_STATUS_FOUND;
 ac->ac_tail = ret & 0xffff;
 ac->ac_buddy = ret >> 16;
 ac->ac_bitmap_page = e4b->bd_bitmap_page;
 get_page(ac->ac_bitmap_page);
 ac->ac_buddy_page = e4b->bd_buddy_page;
 get_page(ac->ac_buddy_page);

 if (ac->ac_flags & EXT4_MB_STREAM_ALLOC) {
  spin_lock(&sbi->s_md_lock);
  sbi->s_mb_last_group = ac->ac_f_ex.fe_group;
  sbi->s_mb_last_start = ac->ac_f_ex.fe_start;
  spin_unlock(&sbi->s_md_lock);
 }
}
