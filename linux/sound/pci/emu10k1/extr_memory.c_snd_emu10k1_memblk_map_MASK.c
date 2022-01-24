#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct snd_emu10k1_memblk {scalar_t__ mapped_page; int pages; scalar_t__ map_locked; int /*<<< orphan*/  mapped_order_link; } ;
struct list_head {struct list_head* next; } ;
struct snd_emu10k1 {int /*<<< orphan*/  memblk_lock; struct list_head mapped_order_link_head; } ;

/* Variables and functions */
 struct snd_emu10k1_memblk* FUNC0 (struct list_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct list_head*) ; 
 int FUNC2 (struct snd_emu10k1*,struct snd_emu10k1_memblk*) ; 
 int /*<<< orphan*/  mapped_order_link ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC5 (struct snd_emu10k1*,struct snd_emu10k1_memblk*) ; 

int FUNC6(struct snd_emu10k1 *emu, struct snd_emu10k1_memblk *blk)
{
	int err;
	int size;
	struct list_head *p, *nextp;
	struct snd_emu10k1_memblk *deleted;
	unsigned long flags;

	FUNC3(&emu->memblk_lock, flags);
	if (blk->mapped_page >= 0) {
		/* update order link */
		FUNC1(&blk->mapped_order_link,
			       &emu->mapped_order_link_head);
		FUNC4(&emu->memblk_lock, flags);
		return 0;
	}
	if ((err = FUNC2(emu, blk)) < 0) {
		/* no enough page - try to unmap some blocks */
		/* starting from the oldest block */
		p = emu->mapped_order_link_head.next;
		for (; p != &emu->mapped_order_link_head; p = nextp) {
			nextp = p->next;
			deleted = FUNC0(p, mapped_order_link);
			if (deleted->map_locked)
				continue;
			size = FUNC5(emu, deleted);
			if (size >= blk->pages) {
				/* ok the empty region is enough large */
				err = FUNC2(emu, blk);
				break;
			}
		}
	}
	FUNC4(&emu->memblk_lock, flags);
	return err;
}