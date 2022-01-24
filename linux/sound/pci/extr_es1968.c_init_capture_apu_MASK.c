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
struct esschan {int* apu; int* apu_mode; unsigned int* base; } ;
struct TYPE_2__ {scalar_t__ addr; } ;
struct es1968 {TYPE_1__ dma; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct es1968*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct es1968*,struct esschan*,int,unsigned int,int) ; 

__attribute__((used)) static void FUNC2(struct es1968 *chip, struct esschan *es, int channel,
			     unsigned int pa, unsigned int bsize,
			     int mode, int route)
{
	int i, apu = es->apu[channel];

	es->apu_mode[channel] = mode;

	/* set the wavecache control reg */
	FUNC1(chip, es, channel, pa, 1);

	/* Offset to PCMBAR */
	pa -= chip->dma.addr;
	pa >>= 1;	/* words */

	/* base offset of dma calcs when reading the pointer
	   on this left one */
	es->base[channel] = pa & 0xFFFF;
	pa |= 0x00400000;	/* bit 22 -> System RAM */

	/* Begin loading the APU */
	for (i = 0; i < 16; i++)
		FUNC0(chip, apu, i, 0x0000);

	/* need to enable subgroups.. and we should probably
	   have different groups for different /dev/dsps..  */
	FUNC0(chip, apu, 2, 0x8);

	/* Load the buffer into the wave engine */
	FUNC0(chip, apu, 4, ((pa >> 16) & 0xFF) << 8);
	FUNC0(chip, apu, 5, pa & 0xFFFF);
	FUNC0(chip, apu, 6, (pa + bsize) & 0xFFFF);
	FUNC0(chip, apu, 7, bsize);
	/* clear effects/env.. */
	FUNC0(chip, apu, 8, 0x00F0);
	/* amplitude now?  sure.  why not.  */
	FUNC0(chip, apu, 9, 0x0000);
	/* set filter tune, radius, polar pan */
	FUNC0(chip, apu, 10, 0x8F08);
	/* route input */
	FUNC0(chip, apu, 11, route);
	/* dma on, no envelopes, filter to all 1s) */
	FUNC0(chip, apu, 0, 0x400F);
}