
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct jffs2_sb_info {int erase_wait; int erase_free_sem; int erase_completion_lock; int nr_erasing_blocks; int bad_list; scalar_t__ sector_size; int bad_size; int erasing_size; int dirty_size; int erase_pending_list; } ;
struct jffs2_eraseblock {int list; scalar_t__ dirty_size; } ;


 scalar_t__ MTD_FAIL_ADDR_UNKNOWN ;
 scalar_t__ jffs2_cleanmarker_oob (struct jffs2_sb_info*) ;
 int jffs2_write_nand_badblock (struct jffs2_sb_info*,struct jffs2_eraseblock*,scalar_t__) ;
 int list_move (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void jffs2_erase_failed(struct jffs2_sb_info *c, struct jffs2_eraseblock *jeb, uint32_t bad_offset)
{


 if (jffs2_cleanmarker_oob(c) && (bad_offset != (uint32_t)MTD_FAIL_ADDR_UNKNOWN)) {


  if (!jffs2_write_nand_badblock(c, jeb, bad_offset)) {

   mutex_lock(&c->erase_free_sem);
   spin_lock(&c->erase_completion_lock);
   list_move(&jeb->list, &c->erase_pending_list);
   c->erasing_size -= c->sector_size;
   c->dirty_size += c->sector_size;
   jeb->dirty_size = c->sector_size;
   spin_unlock(&c->erase_completion_lock);
   mutex_unlock(&c->erase_free_sem);
   return;
  }
 }

 mutex_lock(&c->erase_free_sem);
 spin_lock(&c->erase_completion_lock);
 c->erasing_size -= c->sector_size;
 c->bad_size += c->sector_size;
 list_move(&jeb->list, &c->bad_list);
 c->nr_erasing_blocks--;
 spin_unlock(&c->erase_completion_lock);
 mutex_unlock(&c->erase_free_sem);
 wake_up(&c->erase_wait);
}
