#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct snd_util_memhdr {int /*<<< orphan*/  block_mutex; } ;
struct snd_util_memblk {int dummy; } ;
struct TYPE_2__ {struct snd_util_memhdr* memhdr; } ;
struct snd_trident {TYPE_1__ tlb; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct snd_util_memhdr*,struct snd_util_memblk*) ; 
 int FUNC1 (struct snd_util_memblk*) ; 
 int FUNC2 (struct snd_util_memblk*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_trident*,int) ; 
 scalar_t__ FUNC6 (int) ; 

int FUNC7(struct snd_trident *trident,
			   struct snd_util_memblk *blk)
{
	struct snd_util_memhdr *hdr;
	int page;

	if (FUNC6(!trident || !blk))
		return -EINVAL;

	hdr = trident->tlb.memhdr;
	FUNC3(&hdr->block_mutex);
	/* reset TLB entries */
	for (page = FUNC1(blk); page <= FUNC2(blk); page++)
		FUNC5(trident, page);
	/* free memory block */
	FUNC0(hdr, blk);
	FUNC4(&hdr->block_mutex);
	return 0;
}