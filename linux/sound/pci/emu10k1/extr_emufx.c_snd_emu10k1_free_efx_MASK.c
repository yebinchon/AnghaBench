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
struct TYPE_2__ {int /*<<< orphan*/  dbg; } ;
struct snd_emu10k1 {TYPE_1__ fx8010; scalar_t__ audigy; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_DBG ; 
 int /*<<< orphan*/  A_DBG_SINGLE_STEP ; 
 int /*<<< orphan*/  DBG ; 
 int /*<<< orphan*/  EMU10K1_DBG_SINGLE_STEP ; 
 int /*<<< orphan*/  FUNC0 (struct snd_emu10k1*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC1(struct snd_emu10k1 *emu)
{
	/* stop processor */
	if (emu->audigy)
		FUNC0(emu, A_DBG, 0, emu->fx8010.dbg = A_DBG_SINGLE_STEP);
	else
		FUNC0(emu, DBG, 0, emu->fx8010.dbg = EMU10K1_DBG_SINGLE_STEP);
}