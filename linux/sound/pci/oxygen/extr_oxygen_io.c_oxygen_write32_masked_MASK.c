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
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/ * _32; } ;
struct oxygen {TYPE_1__ saved_registers; scalar_t__ addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

void FUNC3(struct oxygen *chip, unsigned int reg,
			   u32 value, u32 mask)
{
	u32 tmp = FUNC1(chip->addr + reg);
	tmp &= ~mask;
	tmp |= value & mask;
	FUNC2(tmp, chip->addr + reg);
	chip->saved_registers._32[reg / 4] = FUNC0(tmp);
}