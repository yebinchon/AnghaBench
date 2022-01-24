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
struct oxygen {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CS4245_LOAD_FROM_SHADOW ; 
 int /*<<< orphan*/  GPIO_OUTPUT_ENABLE ; 
 int /*<<< orphan*/  OXYGEN_GPIO_DATA ; 
 int /*<<< orphan*/  FUNC0 (struct oxygen*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct oxygen*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(struct oxygen *chip)
{
	FUNC0(chip, CS4245_LOAD_FROM_SHADOW);
	FUNC1(2500);
	FUNC2(chip, OXYGEN_GPIO_DATA, GPIO_OUTPUT_ENABLE);
}