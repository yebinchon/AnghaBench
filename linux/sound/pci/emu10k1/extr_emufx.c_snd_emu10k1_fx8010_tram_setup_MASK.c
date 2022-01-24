#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct TYPE_5__ {int bytes; int addr; int /*<<< orphan*/ * area; } ;
struct TYPE_4__ {TYPE_2__ etram_pages; } ;
struct snd_emu10k1 {int /*<<< orphan*/  emu_lock; scalar_t__ port; TYPE_1__ fx8010; int /*<<< orphan*/  pci; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ HCFG ; 
 int HCFG_LOCKTANKCACHE_MASK ; 
 int /*<<< orphan*/  SNDRV_DMA_TYPE_DEV ; 
 int /*<<< orphan*/  TCB ; 
 int /*<<< orphan*/  TCBS ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_emu10k1*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(struct snd_emu10k1 *emu, u32 size)
{
	u8 size_reg = 0;

	/* size is in samples */
	if (size != 0) {
		size = (size - 1) >> 13;

		while (size) {
			size >>= 1;
			size_reg++;
		}
		size = 0x2000 << size_reg;
	}
	if ((emu->fx8010.etram_pages.bytes / 2) == size)
		return 0;
	FUNC7(&emu->emu_lock);
	FUNC2(HCFG_LOCKTANKCACHE_MASK | FUNC0(emu->port + HCFG), emu->port + HCFG);
	FUNC8(&emu->emu_lock);
	FUNC6(emu, TCB, 0, 0);
	FUNC6(emu, TCBS, 0, 0);
	if (emu->fx8010.etram_pages.area != NULL) {
		FUNC4(&emu->fx8010.etram_pages);
		emu->fx8010.etram_pages.area = NULL;
		emu->fx8010.etram_pages.bytes = 0;
	}

	if (size > 0) {
		if (FUNC3(SNDRV_DMA_TYPE_DEV, FUNC5(emu->pci),
					size * 2, &emu->fx8010.etram_pages) < 0)
			return -ENOMEM;
		FUNC1(emu->fx8010.etram_pages.area, 0, size * 2);
		FUNC6(emu, TCB, 0, emu->fx8010.etram_pages.addr);
		FUNC6(emu, TCBS, 0, size_reg);
		FUNC7(&emu->emu_lock);
		FUNC2(FUNC0(emu->port + HCFG) & ~HCFG_LOCKTANKCACHE_MASK, emu->port + HCFG);
		FUNC8(&emu->emu_lock);
	}

	return 0;
}