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
struct TYPE_4__ {TYPE_1__* cmds; } ;
struct snd_pmac {TYPE_2__ extra_dma; int /*<<< orphan*/  playback; } ;
struct TYPE_3__ {int /*<<< orphan*/  command; } ;

/* Variables and functions */
 int /*<<< orphan*/  DBDMA_STOP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pmac*) ; 

void FUNC3(struct snd_pmac *chip)
{
	FUNC1(&chip->playback);
	chip->extra_dma.cmds->command = FUNC0(DBDMA_STOP);
	FUNC2(chip); /* reset format */
}