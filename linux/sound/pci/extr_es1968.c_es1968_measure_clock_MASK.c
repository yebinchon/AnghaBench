#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int addr; int /*<<< orphan*/  area; } ;
struct esm_memory {TYPE_1__ buf; } ;
struct TYPE_5__ {int addr; } ;
struct es1968 {int clock; int in_measurement; int measure_apu; int measure_count; TYPE_3__* card; int /*<<< orphan*/  reg_lock; scalar_t__ io_port; TYPE_2__ dma; } ;
typedef  int /*<<< orphan*/  ktime_t ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int CLOCK_MEASURE_BUFSIZE ; 
 int /*<<< orphan*/  ESM_APU_16BITLINEAR ; 
 int /*<<< orphan*/  ESM_APU_PCM_PLAY ; 
 int /*<<< orphan*/  ESM_BOB_FREQ ; 
 int ESM_HIRQ_DSIE ; 
 scalar_t__ ESM_PORT_HOST_IRQ ; 
 unsigned int FUNC0 (struct es1968*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct es1968*,int,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct es1968*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int,scalar_t__) ; 
 int FUNC13 (struct es1968*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct es1968*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC15 (struct es1968*) ; 
 int /*<<< orphan*/  FUNC16 (struct es1968*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct es1968*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct es1968*,struct esm_memory*) ; 
 struct esm_memory* FUNC19 (struct es1968*,int) ; 
 int /*<<< orphan*/  FUNC20 (struct es1968*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (struct es1968*,int,int) ; 

__attribute__((used)) static void FUNC24(struct es1968 *chip)
{
	int i, apu;
	unsigned int pa, offset, t;
	struct esm_memory *memory;
	ktime_t start_time, stop_time;
	ktime_t diff;

	if (chip->clock == 0)
		chip->clock = 48000; /* default clock value */

	/* search 2 APUs (although one apu is enough) */
	if ((apu = FUNC13(chip, ESM_APU_PCM_PLAY)) < 0) {
		FUNC3(chip->card->dev, "Hmm, cannot find empty APU pair!?\n");
		return;
	}
	if ((memory = FUNC19(chip, CLOCK_MEASURE_BUFSIZE)) == NULL) {
		FUNC5(chip->card->dev,
			 "cannot allocate dma buffer - using default clock %d\n",
			 chip->clock);
		FUNC17(chip, apu);
		return;
	}

	FUNC10(memory->buf.area, 0, CLOCK_MEASURE_BUFSIZE);

	FUNC23(chip, apu << 3, (memory->buf.addr - 0x10) & 0xfff8);

	pa = (unsigned int)((memory->buf.addr - chip->dma.addr) >> 1);
	pa |= 0x00400000;	/* System RAM (Bit 22) */

	/* initialize apu */
	for (i = 0; i < 16; i++)
		FUNC2(chip, apu, i, 0x0000);

	FUNC2(chip, apu, 0, 0x400f);
	FUNC2(chip, apu, 4, ((pa >> 16) & 0xff) << 8);
	FUNC2(chip, apu, 5, pa & 0xffff);
	FUNC2(chip, apu, 6, (pa + CLOCK_MEASURE_BUFSIZE/2) & 0xffff);
	FUNC2(chip, apu, 7, CLOCK_MEASURE_BUFSIZE/2);
	FUNC2(chip, apu, 8, 0x0000);
	FUNC2(chip, apu, 9, 0xD000);
	FUNC2(chip, apu, 10, 0x8F08);
	FUNC2(chip, apu, 11, 0x0000);
	FUNC21(&chip->reg_lock);
	FUNC12(1, chip->io_port + 0x04); /* clear WP interrupts */
	FUNC12(FUNC6(chip->io_port + ESM_PORT_HOST_IRQ) | ESM_HIRQ_DSIE, chip->io_port + ESM_PORT_HOST_IRQ); /* enable WP ints */
	FUNC22(&chip->reg_lock);

	FUNC14(chip, apu, ((unsigned int)48000 << 16) / chip->clock); /* 48000 Hz */

	chip->in_measurement = 1;
	chip->measure_apu = apu;
	FUNC21(&chip->reg_lock);
	FUNC16(chip, ESM_BOB_FREQ);
	FUNC1(chip, apu, 5, pa & 0xffff);
	FUNC20(chip, apu, ESM_APU_16BITLINEAR);
	start_time = FUNC7();
	FUNC22(&chip->reg_lock);
	FUNC11(50);
	FUNC21(&chip->reg_lock);
	offset = FUNC0(chip, apu, 5);
	stop_time = FUNC7();
	FUNC20(chip, apu, 0); /* stop */
	FUNC15(chip);
	chip->in_measurement = 0;
	FUNC22(&chip->reg_lock);

	/* check the current position */
	offset -= (pa & 0xffff);
	offset &= 0xfffe;
	offset += chip->measure_count * (CLOCK_MEASURE_BUFSIZE/2);

	diff = FUNC8(stop_time, start_time);
	t = FUNC9(diff);
	if (t == 0) {
		FUNC3(chip->card->dev, "?? calculation error..\n");
	} else {
		offset *= 1000;
		offset = (offset / t) * 1000 + ((offset % t) * 1000) / t;
		if (offset < 47500 || offset > 48500) {
			if (offset >= 40000 && offset <= 50000)
				chip->clock = (chip->clock * offset) / 48000;
		}
		FUNC4(chip->card->dev, "clocking to %d\n", chip->clock);
	}
	FUNC18(chip, memory);
	FUNC17(chip, apu);
}