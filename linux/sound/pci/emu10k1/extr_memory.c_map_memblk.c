
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_emu10k1_memblk {int mapped_page; int first_page; int last_page; int mapped_order_link; int mapped_link; int pages; } ;
struct list_head {int dummy; } ;
struct snd_emu10k1 {int * page_addr_table; struct list_head mapped_order_link_head; TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int dev_err (int ,char*) ;
 int list_add_tail (int *,struct list_head*) ;
 int search_empty_map_area (struct snd_emu10k1*,int ,struct list_head**) ;
 int set_ptb_entry (struct snd_emu10k1*,int,int ) ;

__attribute__((used)) static int map_memblk(struct snd_emu10k1 *emu, struct snd_emu10k1_memblk *blk)
{
 int page, pg;
 struct list_head *next;

 page = search_empty_map_area(emu, blk->pages, &next);
 if (page < 0)
  return page;
 if (page == 0) {
  dev_err(emu->card->dev, "trying to map zero (reserved) page\n");
  return -EINVAL;
 }

 list_add_tail(&blk->mapped_link, next);

 list_add_tail(&blk->mapped_order_link, &emu->mapped_order_link_head);
 blk->mapped_page = page;

 for (pg = blk->first_page; pg <= blk->last_page; pg++) {
  set_ptb_entry(emu, page, emu->page_addr_table[pg]);
  page++;
 }
 return 0;
}
