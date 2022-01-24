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
struct snd_util_memblk {int offset; } ;
struct snd_emu10k1_memblk {scalar_t__ first_page; } ;
struct snd_emu10k1 {int dummy; } ;

/* Variables and functions */
 int PAGE_SIZE ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,int) ; 
 void* FUNC3 (struct snd_emu10k1*,scalar_t__,int) ; 

int FUNC4(struct snd_emu10k1 *emu, struct snd_util_memblk *blk,
			    int offset, int size)
{
	int page, nextofs, end_offset, temp, temp1;
	void *ptr;
	struct snd_emu10k1_memblk *p = (struct snd_emu10k1_memblk *)blk;

	offset += blk->offset & (PAGE_SIZE - 1);
	end_offset = offset + size;
	page = FUNC1(offset);
	do {
		nextofs = FUNC0(page + 1);
		temp = nextofs - offset;
		temp1 = end_offset - offset;
		if (temp1 < temp)
			temp = temp1;
		ptr = FUNC3(emu, page + p->first_page, offset);
		if (ptr)
			FUNC2(ptr, 0, temp);
		offset = nextofs;
		page++;
	} while (offset < end_offset);
	return 0;
}