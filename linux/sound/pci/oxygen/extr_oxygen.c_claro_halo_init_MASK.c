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
 int /*<<< orphan*/  GPIO_CLARO_DIG_COAX ; 
 int /*<<< orphan*/  OXYGEN_GPIO_CONTROL ; 
 int /*<<< orphan*/  OXYGEN_GPIO_DATA ; 
 int /*<<< orphan*/  FUNC0 (struct oxygen*) ; 
 int /*<<< orphan*/  FUNC1 (struct oxygen*) ; 
 int /*<<< orphan*/  FUNC2 (struct oxygen*) ; 
 int /*<<< orphan*/  FUNC3 (struct oxygen*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct oxygen*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct oxygen *chip)
{
	FUNC4(chip, OXYGEN_GPIO_CONTROL, GPIO_CLARO_DIG_COAX);
	FUNC3(chip, OXYGEN_GPIO_DATA, GPIO_CLARO_DIG_COAX);
	FUNC0(chip);
	FUNC1(chip);
	FUNC2(chip);
}