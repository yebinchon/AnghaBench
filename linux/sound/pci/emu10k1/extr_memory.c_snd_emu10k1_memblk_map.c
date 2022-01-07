
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_emu10k1_memblk {scalar_t__ mapped_page; int pages; scalar_t__ map_locked; int mapped_order_link; } ;
struct list_head {struct list_head* next; } ;
struct snd_emu10k1 {int memblk_lock; struct list_head mapped_order_link_head; } ;


 struct snd_emu10k1_memblk* get_emu10k1_memblk (struct list_head*,int ) ;
 int list_move_tail (int *,struct list_head*) ;
 int map_memblk (struct snd_emu10k1*,struct snd_emu10k1_memblk*) ;
 int mapped_order_link ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int unmap_memblk (struct snd_emu10k1*,struct snd_emu10k1_memblk*) ;

int snd_emu10k1_memblk_map(struct snd_emu10k1 *emu, struct snd_emu10k1_memblk *blk)
{
 int err;
 int size;
 struct list_head *p, *nextp;
 struct snd_emu10k1_memblk *deleted;
 unsigned long flags;

 spin_lock_irqsave(&emu->memblk_lock, flags);
 if (blk->mapped_page >= 0) {

  list_move_tail(&blk->mapped_order_link,
          &emu->mapped_order_link_head);
  spin_unlock_irqrestore(&emu->memblk_lock, flags);
  return 0;
 }
 if ((err = map_memblk(emu, blk)) < 0) {


  p = emu->mapped_order_link_head.next;
  for (; p != &emu->mapped_order_link_head; p = nextp) {
   nextp = p->next;
   deleted = get_emu10k1_memblk(p, mapped_order_link);
   if (deleted->map_locked)
    continue;
   size = unmap_memblk(emu, deleted);
   if (size >= blk->pages) {

    err = map_memblk(emu, blk);
    break;
   }
  }
 }
 spin_unlock_irqrestore(&emu->memblk_lock, flags);
 return err;
}
