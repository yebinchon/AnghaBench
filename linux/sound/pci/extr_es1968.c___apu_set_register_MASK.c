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
typedef  size_t u8 ;
typedef  size_t u16 ;
struct es1968 {size_t** apu_map; } ;

/* Variables and functions */
 size_t NR_APUS ; 
 int /*<<< orphan*/  FUNC0 (struct es1968*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct es1968*,size_t) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct es1968 *chip, u16 channel, u8 reg, u16 data)
{
	if (FUNC2(channel >= NR_APUS))
		return;
#ifdef CONFIG_PM_SLEEP
	chip->apu_map[channel][reg] = data;
#endif
	reg |= (channel << 4);
	FUNC1(chip, reg);
	FUNC0(chip, data);
}