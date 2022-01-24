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
struct snd_emu10k1 {int dma_mask; TYPE_1__* card; } ;
typedef  int dma_addr_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EMUPAGESIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC1(struct snd_emu10k1 *emu, dma_addr_t addr)
{
	if (addr & ~emu->dma_mask) {
		FUNC0(emu->card->dev,
			"max memory size is 0x%lx (addr = 0x%lx)!!\n",
			emu->dma_mask, (unsigned long)addr);
		return 0;
	}
	if (addr & (EMUPAGESIZE-1)) {
		FUNC0(emu->card->dev, "page is not aligned\n");
		return 0;
	}
	return 1;
}