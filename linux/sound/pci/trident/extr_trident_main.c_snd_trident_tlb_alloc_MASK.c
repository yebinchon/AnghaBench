#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct snd_trident_memblk_arg {int dummy; } ;
struct TYPE_8__ {unsigned long addr; scalar_t__ area; } ;
struct TYPE_6__ {unsigned long* shadow_entries; TYPE_3__* memhdr; TYPE_4__ silent_page; int /*<<< orphan*/ * entries; TYPE_4__ buffer; scalar_t__ entries_dmaaddr; } ;
struct snd_trident {TYPE_2__ tlb; TYPE_1__* card; int /*<<< orphan*/  pci; } ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_7__ {int block_extra_size; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned long,int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  SNDRV_DMA_TYPE_DEV ; 
 int SNDRV_TRIDENT_MAX_PAGES ; 
 int SNDRV_TRIDENT_PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC7 (int) ; 
 unsigned long* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct snd_trident *trident)
{
	int i;

	/* TLB array must be aligned to 16kB !!! so we allocate
	   32kB region and correct offset when necessary */

	if (FUNC5(SNDRV_DMA_TYPE_DEV, FUNC6(trident->pci),
				2 * SNDRV_TRIDENT_MAX_PAGES * 4, &trident->tlb.buffer) < 0) {
		FUNC3(trident->card->dev, "unable to allocate TLB buffer\n");
		return -ENOMEM;
	}
	trident->tlb.entries = (__le32 *)FUNC0((unsigned long)trident->tlb.buffer.area, SNDRV_TRIDENT_MAX_PAGES * 4);
	trident->tlb.entries_dmaaddr = FUNC0(trident->tlb.buffer.addr, SNDRV_TRIDENT_MAX_PAGES * 4);
	/* allocate shadow TLB page table (virtual addresses) */
	trident->tlb.shadow_entries =
		FUNC8(FUNC1(SNDRV_TRIDENT_MAX_PAGES,
				   sizeof(unsigned long)));
	if (!trident->tlb.shadow_entries)
		return -ENOMEM;

	/* allocate and setup silent page and initialise TLB entries */
	if (FUNC5(SNDRV_DMA_TYPE_DEV, FUNC6(trident->pci),
				SNDRV_TRIDENT_PAGE_SIZE, &trident->tlb.silent_page) < 0) {
		FUNC3(trident->card->dev, "unable to allocate silent page\n");
		return -ENOMEM;
	}
	FUNC4(trident->tlb.silent_page.area, 0, SNDRV_TRIDENT_PAGE_SIZE);
	for (i = 0; i < SNDRV_TRIDENT_MAX_PAGES; i++) {
		trident->tlb.entries[i] = FUNC2(trident->tlb.silent_page.addr & ~(SNDRV_TRIDENT_PAGE_SIZE-1));
		trident->tlb.shadow_entries[i] = (unsigned long)trident->tlb.silent_page.area;
	}

	/* use emu memory block manager code to manage tlb page allocation */
	trident->tlb.memhdr = FUNC7(SNDRV_TRIDENT_PAGE_SIZE * SNDRV_TRIDENT_MAX_PAGES);
	if (trident->tlb.memhdr == NULL)
		return -ENOMEM;

	trident->tlb.memhdr->block_extra_size = sizeof(struct snd_trident_memblk_arg);
	return 0;
}