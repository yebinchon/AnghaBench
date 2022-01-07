
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct list_head {int dummy; } ;
struct snd_util_memhdr {struct list_head block; } ;
struct TYPE_4__ {struct list_head* next; struct list_head* prev; } ;
struct TYPE_5__ {TYPE_1__ list; } ;
struct snd_emu10k1_memblk {int first_page; int last_page; TYPE_2__ mem; } ;
struct TYPE_6__ {int list; } ;


 struct snd_emu10k1_memblk* get_emu10k1_memblk (struct list_head*,int ) ;
 TYPE_3__ mem ;

__attribute__((used)) static void get_single_page_range(struct snd_util_memhdr *hdr,
      struct snd_emu10k1_memblk *blk,
      int *first_page_ret, int *last_page_ret)
{
 struct list_head *p;
 struct snd_emu10k1_memblk *q;
 int first_page, last_page;
 first_page = blk->first_page;
 if ((p = blk->mem.list.prev) != &hdr->block) {
  q = get_emu10k1_memblk(p, mem.list);
  if (q->last_page == first_page)
   first_page++;
 }
 last_page = blk->last_page;
 if ((p = blk->mem.list.next) != &hdr->block) {
  q = get_emu10k1_memblk(p, mem.list);
  if (q->first_page == last_page)
   last_page--;
 }
 *first_page_ret = first_page;
 *last_page_ret = last_page;
}
