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
typedef  int /*<<< orphan*/  u16 ;
struct es1968 {int /*<<< orphan*/  reg_lock; scalar_t__ io_port; } ;

/* Variables and functions */
 scalar_t__ WC_DATA ; 
 scalar_t__ WC_INDEX ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static u16 FUNC4(struct es1968 *chip, u16 reg)
{
	unsigned long flags;
	u16 value;

	FUNC2(&chip->reg_lock, flags);
	FUNC1(reg, chip->io_port + WC_INDEX);
	value = FUNC0(chip->io_port + WC_DATA);
	FUNC3(&chip->reg_lock, flags);

	return value;
}