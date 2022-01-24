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
struct snd_emu8000 {int dram_checked; int mem_size; int /*<<< orphan*/  port1; } ;

/* Variables and functions */
 scalar_t__ EMU8000_DRAM_OFFSET ; 
 int EMU8000_MAX_DRAM ; 
 int /*<<< orphan*/  EMU8000_RAM_CLOSE ; 
 int /*<<< orphan*/  EMU8000_RAM_READ ; 
 int /*<<< orphan*/  EMU8000_RAM_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct snd_emu8000*,scalar_t__) ; 
 int FUNC1 (struct snd_emu8000*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_emu8000*,scalar_t__) ; 
 scalar_t__ FUNC3 (struct snd_emu8000*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_emu8000*,scalar_t__) ; 
 scalar_t__ UNIQUE_ID1 ; 
 scalar_t__ UNIQUE_ID2 ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_emu8000*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct snd_emu8000*) ; 
 int /*<<< orphan*/  FUNC10 (struct snd_emu8000*) ; 
 int /*<<< orphan*/  FUNC11 (struct snd_emu8000*) ; 

__attribute__((used)) static void
FUNC12(struct snd_emu8000 *emu)
{
	int i, size;

	if (emu->dram_checked)
		return;

	size = 0;

	/* write out a magic number */
	FUNC8(emu, 0, EMU8000_RAM_WRITE);
	FUNC8(emu, 1, EMU8000_RAM_READ);
	FUNC2(emu, EMU8000_DRAM_OFFSET);
	FUNC4(emu, UNIQUE_ID1);
	FUNC9(emu); /* This must really be here and not 2 lines back even */
	FUNC11(emu);

	/*
	 * Detect first 512 KiB.  If a write succeeds at the beginning of a
	 * 512 KiB page we assume that the whole page is there.
	 */
	FUNC0(emu, EMU8000_DRAM_OFFSET);
	FUNC3(emu); /* discard stale data  */
	if (FUNC3(emu) != UNIQUE_ID1)
		goto skip_detect;   /* No RAM */
	FUNC10(emu);

	for (size = 512 * 1024; size < EMU8000_MAX_DRAM; size += 512 * 1024) {

		/* Write a unique data on the test address.
		 * if the address is out of range, the data is written on
		 * 0x200000(=EMU8000_DRAM_OFFSET).  Then the id word is
		 * changed by this data.
		 */
		/*snd_emu8000_dma_chan(emu, 0, EMU8000_RAM_WRITE);*/
		FUNC2(emu, EMU8000_DRAM_OFFSET + (size>>1));
		FUNC4(emu, UNIQUE_ID2);
		FUNC11(emu);

		/*
		 * read the data on the just written DRAM address
		 * if not the same then we have reached the end of ram.
		 */
		/*snd_emu8000_dma_chan(emu, 0, EMU8000_RAM_READ);*/
		FUNC0(emu, EMU8000_DRAM_OFFSET + (size>>1));
		/*snd_emu8000_read_wait(emu);*/
		FUNC3(emu); /* discard stale data  */
		if (FUNC3(emu) != UNIQUE_ID2)
			break; /* no memory at this address */
		FUNC10(emu);

		/*
		 * If it is the same it could be that the address just
		 * wraps back to the beginning; so check to see if the
		 * initial value has been overwritten.
		 */
		FUNC0(emu, EMU8000_DRAM_OFFSET);
		FUNC3(emu); /* discard stale data  */
		if (FUNC3(emu) != UNIQUE_ID1)
			break; /* we must have wrapped around */
		FUNC10(emu);

		/* Otherwise, it's valid memory. */
	}

skip_detect:
	/* wait until FULL bit in SMAxW register is false */
	for (i = 0; i < 10000; i++) {
		if ((FUNC1(emu) & 0x80000000) == 0)
			break;
		FUNC6(1);
		if (FUNC7(current))
			break;
	}
	FUNC8(emu, 0, EMU8000_RAM_CLOSE);
	FUNC8(emu, 1, EMU8000_RAM_CLOSE);

	FUNC5("EMU8000 [0x%lx]: %d KiB on-board DRAM detected\n",
		    emu->port1, size/1024);

	emu->mem_size = size;
	emu->dram_checked = 1;
}