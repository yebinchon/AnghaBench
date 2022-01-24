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
struct snd_util_memhdr {int /*<<< orphan*/  block_mutex; } ;
struct snd_util_memblk {int dummy; } ;
struct snd_emu10k1_memblk {scalar_t__ mapped_page; } ;
struct snd_emu10k1 {int /*<<< orphan*/  memblk_lock; struct snd_util_memhdr* memhdr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_util_memhdr*,struct snd_util_memblk*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_emu10k1*,struct snd_emu10k1_memblk*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_emu10k1*,struct snd_emu10k1_memblk*) ; 

int
FUNC7(struct snd_emu10k1 *emu, struct snd_util_memblk *memblk)
{
	struct snd_util_memhdr *hdr = emu->memhdr; 
	struct snd_emu10k1_memblk *blk = (struct snd_emu10k1_memblk *)memblk;
	unsigned long flags;

	FUNC1(&hdr->block_mutex);
	FUNC3(&emu->memblk_lock, flags);
	if (blk->mapped_page >= 0)
		FUNC6(emu, blk);
	FUNC4(&emu->memblk_lock, flags);
	FUNC5(emu, blk);
	 FUNC0(hdr, memblk);
	FUNC2(&hdr->block_mutex);
	return 0;
}