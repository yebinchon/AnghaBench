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
struct snd_gus_card {int /*<<< orphan*/  reg_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_gus_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQSTAT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_gus_card*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct snd_gus_card * gus)
{
	unsigned long flags;

	FUNC3(&gus->reg_lock, flags);
	FUNC1(FUNC0(gus, IRQSTAT));
	FUNC2(gus, 0x41, 0);	/* DRAM DMA Control Register */
	FUNC2(gus, 0x45, 0);	/* Timer Control */
	FUNC2(gus, 0x49, 0);	/* Sampling Control Register */
	FUNC4(&gus->reg_lock, flags);
}