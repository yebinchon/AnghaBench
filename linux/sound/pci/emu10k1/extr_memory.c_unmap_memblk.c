
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct list_head* next; struct list_head* prev; } ;
struct snd_emu10k1_memblk {int mapped_page; int pages; int first_page; int last_page; TYPE_1__ mapped_order_link; TYPE_1__ mapped_link; } ;
struct list_head {int dummy; } ;
struct snd_emu10k1 {scalar_t__ address_mode; struct list_head mapped_link_head; } ;


 int MAX_ALIGN_PAGES0 ;
 int MAX_ALIGN_PAGES1 ;
 struct snd_emu10k1_memblk* get_emu10k1_memblk (struct list_head*,int ) ;
 int list_del (TYPE_1__*) ;
 int mapped_link ;
 int set_silent_ptb (struct snd_emu10k1*,int) ;

__attribute__((used)) static int unmap_memblk(struct snd_emu10k1 *emu, struct snd_emu10k1_memblk *blk)
{
 int start_page, end_page, mpage, pg;
 struct list_head *p;
 struct snd_emu10k1_memblk *q;


 if ((p = blk->mapped_link.prev) != &emu->mapped_link_head) {
  q = get_emu10k1_memblk(p, mapped_link);
  start_page = q->mapped_page + q->pages;
 } else
  start_page = 1;
 if ((p = blk->mapped_link.next) != &emu->mapped_link_head) {
  q = get_emu10k1_memblk(p, mapped_link);
  end_page = q->mapped_page;
 } else
  end_page = (emu->address_mode ? MAX_ALIGN_PAGES1 : MAX_ALIGN_PAGES0);


 list_del(&blk->mapped_link);
 list_del(&blk->mapped_order_link);

 mpage = blk->mapped_page;
 for (pg = blk->first_page; pg <= blk->last_page; pg++) {
  set_silent_ptb(emu, mpage);
  mpage++;
 }
 blk->mapped_page = -1;
 return end_page - start_page;
}
