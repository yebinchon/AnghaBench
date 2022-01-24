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
 int /*<<< orphan*/  FUNC2 (struct snd_gus_card*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_gus_card*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct snd_gus_card * gus)
{
	unsigned long flags;

	FUNC4(&gus->reg_lock, flags);
	FUNC2(gus, 0x41);	/* DRAM DMA Control Register */
	FUNC2(gus, 0x49);	/* Sampling Control Register */
	FUNC1(FUNC0(gus, IRQSTAT));
	FUNC3(gus, 0x0f);	/* IRQ Source Register */
	FUNC5(&gus->reg_lock, flags);
}