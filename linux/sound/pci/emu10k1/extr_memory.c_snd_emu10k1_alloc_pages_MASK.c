#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_util_memhdr {int /*<<< orphan*/  block_mutex; } ;
struct snd_util_memblk {int dummy; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int dma_bytes; scalar_t__ period_size; scalar_t__ buffer_size; } ;
struct snd_emu10k1_memblk {int first_page; int last_page; int map_locked; } ;
struct TYPE_3__ {int /*<<< orphan*/  addr; } ;
struct snd_emu10k1 {int delay_pcm_irq; int /*<<< orphan*/ ** page_ptr_table; int /*<<< orphan*/ * page_addr_table; TYPE_2__* card; TYPE_1__ silent_page; struct snd_util_memhdr* memhdr; scalar_t__ address_mode; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EMUPAGESIZE ; 
 int MAXPAGES0 ; 
 int MAXPAGES1 ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct snd_util_memhdr*,struct snd_util_memblk*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_emu10k1*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct snd_emu10k1_memblk* FUNC5 (struct snd_emu10k1*,int) ; 
 scalar_t__ FUNC6 (int) ; 
 int FUNC7 (struct snd_emu10k1*,struct snd_emu10k1_memblk*) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_pcm_substream*,unsigned long) ; 

struct snd_util_memblk *
FUNC9(struct snd_emu10k1 *emu, struct snd_pcm_substream *substream)
{
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct snd_util_memhdr *hdr;
	struct snd_emu10k1_memblk *blk;
	int page, err, idx;

	if (FUNC6(!emu))
		return NULL;
	if (FUNC6(runtime->dma_bytes <= 0 ||
		       runtime->dma_bytes >= (emu->address_mode ? MAXPAGES1 : MAXPAGES0) * EMUPAGESIZE))
		return NULL;
	hdr = emu->memhdr;
	if (FUNC6(!hdr))
		return NULL;

	idx = runtime->period_size >= runtime->buffer_size ?
					(emu->delay_pcm_irq * 2) : 0;
	FUNC3(&hdr->block_mutex);
	blk = FUNC5(emu, runtime->dma_bytes + idx);
	if (blk == NULL) {
		FUNC4(&hdr->block_mutex);
		return NULL;
	}
	/* fill buffer addresses but pointers are not stored so that
	 * snd_free_pci_page() is not called in in synth_free()
	 */
	idx = 0;
	for (page = blk->first_page; page <= blk->last_page; page++, idx++) {
		unsigned long ofs = idx << PAGE_SHIFT;
		dma_addr_t addr;
		if (ofs >= runtime->dma_bytes)
			addr = emu->silent_page.addr;
		else
			addr = FUNC8(substream, ofs);
		if (! FUNC2(emu, addr)) {
			FUNC1(emu->card->dev,
				"emu: failure page = %d\n", idx);
			FUNC4(&hdr->block_mutex);
			return NULL;
		}
		emu->page_addr_table[page] = addr;
		emu->page_ptr_table[page] = NULL;
	}

	/* set PTB entries */
	blk->map_locked = 1; /* do not unmap this block! */
	err = FUNC7(emu, blk);
	if (err < 0) {
		FUNC0(hdr, (struct snd_util_memblk *)blk);
		FUNC4(&hdr->block_mutex);
		return NULL;
	}
	FUNC4(&hdr->block_mutex);
	return (struct snd_util_memblk *)blk;
}