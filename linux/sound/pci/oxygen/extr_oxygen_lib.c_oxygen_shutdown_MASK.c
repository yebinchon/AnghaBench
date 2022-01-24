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
struct oxygen {int /*<<< orphan*/  reg_lock; scalar_t__ pcm_running; scalar_t__ interrupt_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  OXYGEN_DMA_STATUS ; 
 int /*<<< orphan*/  OXYGEN_INTERRUPT_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct oxygen*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct oxygen *chip)
{
	FUNC1(&chip->reg_lock);
	chip->interrupt_mask = 0;
	chip->pcm_running = 0;
	FUNC0(chip, OXYGEN_DMA_STATUS, 0);
	FUNC0(chip, OXYGEN_INTERRUPT_MASK, 0);
	FUNC2(&chip->reg_lock);
}