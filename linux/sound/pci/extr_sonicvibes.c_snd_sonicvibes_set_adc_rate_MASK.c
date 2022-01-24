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
struct sonicvibes {int /*<<< orphan*/  reg_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  SV_IREG_ADC_ALT_RATE ; 
 int /*<<< orphan*/  SV_IREG_ADC_CLOCK ; 
 int /*<<< orphan*/  SV_IREG_ADC_PLL ; 
 int /*<<< orphan*/  FUNC0 (struct sonicvibes*,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (struct sonicvibes*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct sonicvibes * sonic, unsigned int rate)
{
	unsigned long flags;
	unsigned int div;
	unsigned char clock;

	div = 48000 / rate;
	if (div > 8)
		div = 8;
	if ((48000 / div) == rate) {	/* use the alternate clock */
		clock = 0x10;
	} else {			/* use the PLL source */
		clock = 0x00;
		FUNC1(sonic, SV_IREG_ADC_PLL, rate);
	}
	FUNC2(&sonic->reg_lock, flags);
	FUNC0(sonic, SV_IREG_ADC_ALT_RATE, (div - 1) << 4);
	FUNC0(sonic, SV_IREG_ADC_CLOCK, clock);
	FUNC3(&sonic->reg_lock, flags);
}