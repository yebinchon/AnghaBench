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
typedef  int u16 ;
struct snd_msnd {int play_sample_size; int play_channels; int play_sample_rate; scalar_t__ SMA; scalar_t__ DSPQ; scalar_t__ mappedbase; scalar_t__ MIDQ; scalar_t__ MODQ; scalar_t__ DARQ; scalar_t__ DAPQ; int /*<<< orphan*/  lock; scalar_t__ io; int /*<<< orphan*/  memid; } ;

/* Variables and functions */
 int /*<<< orphan*/  DAPQ_BUFF_SIZE ; 
 int /*<<< orphan*/  DAPQ_DATA_BUFF ; 
 scalar_t__ DAPQ_OFFSET ; 
 int /*<<< orphan*/  DARQ_BUFF_SIZE ; 
 int /*<<< orphan*/  DARQ_DATA_BUFF ; 
 scalar_t__ DARQ_OFFSET ; 
 int /*<<< orphan*/  DSPQ_BUFF_SIZE ; 
 int /*<<< orphan*/  DSPQ_DATA_BUFF ; 
 scalar_t__ DSPQ_OFFSET ; 
 int /*<<< orphan*/  HPBLKSEL_0 ; 
 int /*<<< orphan*/  HPBLKSEL_1 ; 
 scalar_t__ HP_BLKS ; 
 scalar_t__ HP_MEMM ; 
 int /*<<< orphan*/  MIDQ_BUFF_SIZE ; 
 int /*<<< orphan*/  MIDQ_DATA_BUFF ; 
 scalar_t__ MIDQ_OFFSET ; 
 int /*<<< orphan*/  MODQ_BUFF_SIZE ; 
 int /*<<< orphan*/  MODQ_DATA_BUFF ; 
 scalar_t__ MODQ_OFFSET ; 
 scalar_t__ SMA_STRUCT_START ; 
 scalar_t__ SMA_dwCurrPlayPitch ; 
 scalar_t__ SMA_dwCurrPlayRate ; 
 scalar_t__ SMA_wCalFreqAtoD ; 
 scalar_t__ SMA_wCurrInputTagBits ; 
 scalar_t__ SMA_wCurrMastVolLeft ; 
 scalar_t__ SMA_wCurrMastVolRight ; 
 scalar_t__ SMA_wCurrPlayChannels ; 
 scalar_t__ SMA_wCurrPlayFormat ; 
 scalar_t__ SMA_wCurrPlaySampleRate ; 
 scalar_t__ SMA_wCurrPlaySampleSize ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC8(struct snd_msnd *chip)
{
	static int initted;
	u16 mastVolLeft, mastVolRight;
	unsigned long flags;

#ifdef MSND_CLASSIC
	outb(chip->memid, chip->io + HP_MEMM);
#endif
	FUNC1(HPBLKSEL_0, chip->io + HP_BLKS);
	/* Motorola 56k shared memory base */
	chip->SMA = chip->mappedbase + SMA_STRUCT_START;

	if (initted) {
		mastVolLeft = FUNC2(chip->SMA + SMA_wCurrMastVolLeft);
		mastVolRight = FUNC2(chip->SMA + SMA_wCurrMastVolRight);
	} else
		mastVolLeft = mastVolRight = 0;
	FUNC0(chip->mappedbase, 0, 0x8000);

	/* Critical section: bank 1 access */
	FUNC4(&chip->lock, flags);
	FUNC1(HPBLKSEL_1, chip->io + HP_BLKS);
	FUNC0(chip->mappedbase, 0, 0x8000);
	FUNC1(HPBLKSEL_0, chip->io + HP_BLKS);
	FUNC5(&chip->lock, flags);

	/* Digital audio play queue */
	chip->DAPQ = chip->mappedbase + DAPQ_OFFSET;
	FUNC3(chip->DAPQ, DAPQ_DATA_BUFF, DAPQ_BUFF_SIZE);

	/* Digital audio record queue */
	chip->DARQ = chip->mappedbase + DARQ_OFFSET;
	FUNC3(chip->DARQ, DARQ_DATA_BUFF, DARQ_BUFF_SIZE);

	/* MIDI out queue */
	chip->MODQ = chip->mappedbase + MODQ_OFFSET;
	FUNC3(chip->MODQ, MODQ_DATA_BUFF, MODQ_BUFF_SIZE);

	/* MIDI in queue */
	chip->MIDQ = chip->mappedbase + MIDQ_OFFSET;
	FUNC3(chip->MIDQ, MIDQ_DATA_BUFF, MIDQ_BUFF_SIZE);

	/* DSP -> host message queue */
	chip->DSPQ = chip->mappedbase + DSPQ_OFFSET;
	FUNC3(chip->DSPQ, DSPQ_DATA_BUFF, DSPQ_BUFF_SIZE);

	/* Setup some DSP values */
#ifndef MSND_CLASSIC
	FUNC7(1, chip->SMA + SMA_wCurrPlayFormat);
	FUNC7(chip->play_sample_size, chip->SMA + SMA_wCurrPlaySampleSize);
	FUNC7(chip->play_channels, chip->SMA + SMA_wCurrPlayChannels);
	FUNC7(chip->play_sample_rate, chip->SMA + SMA_wCurrPlaySampleRate);
#endif
	FUNC7(chip->play_sample_rate, chip->SMA + SMA_wCalFreqAtoD);
	FUNC7(mastVolLeft, chip->SMA + SMA_wCurrMastVolLeft);
	FUNC7(mastVolRight, chip->SMA + SMA_wCurrMastVolRight);
#ifndef MSND_CLASSIC
	FUNC6(0x00010000, chip->SMA + SMA_dwCurrPlayPitch);
	FUNC6(0x00000001, chip->SMA + SMA_dwCurrPlayRate);
#endif
	FUNC7(0x303, chip->SMA + SMA_wCurrInputTagBits);

	initted = 1;

	return 0;
}