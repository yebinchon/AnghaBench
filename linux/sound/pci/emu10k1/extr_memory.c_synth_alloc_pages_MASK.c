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
struct snd_emu10k1_memblk {int dummy; } ;
struct snd_emu10k1 {int /*<<< orphan*/ * page_ptr_table; int /*<<< orphan*/ * page_addr_table; int /*<<< orphan*/  memhdr; } ;
struct snd_dma_buffer {int /*<<< orphan*/  area; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct snd_emu10k1*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_emu10k1_memblk*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct snd_emu10k1_memblk*,int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_emu10k1*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_dma_buffer*) ; 
 scalar_t__ FUNC5 (struct snd_emu10k1*,int /*<<< orphan*/ ,struct snd_dma_buffer*) ; 

__attribute__((used)) static int FUNC6(struct snd_emu10k1 *emu, struct snd_emu10k1_memblk *blk)
{
	int page, first_page, last_page;
	struct snd_dma_buffer dmab;

	FUNC1(blk);
	FUNC2(emu->memhdr, blk, &first_page, &last_page);
	/* allocate kernel pages */
	for (page = first_page; page <= last_page; page++) {
		if (FUNC5(emu, PAGE_SIZE,
							&dmab) < 0)
			goto __fail;
		if (!FUNC3(emu, dmab.addr)) {
			FUNC4(&dmab);
			goto __fail;
		}
		emu->page_addr_table[page] = dmab.addr;
		emu->page_ptr_table[page] = dmab.area;
	}
	return 0;

__fail:
	/* release allocated pages */
	last_page = page - 1;
	FUNC0(emu, first_page, last_page);

	return -ENOMEM;
}