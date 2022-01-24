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
struct TYPE_2__ {unsigned int const direction; unsigned int const write_mask; } ;
struct snd_ice1712 {TYPE_1__ gpio; } ;

/* Variables and functions */
 unsigned int const FUNC0 (struct snd_ice1712*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ice1712*,unsigned int const) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_ice1712*,unsigned int const) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_ice1712*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_ice1712*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_ice1712*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(struct snd_ice1712 *ice,
					unsigned int addr, unsigned int data)
{
	unsigned int st;
	unsigned int bits;
	int i;
	const unsigned int DATA  = 0x010000;
	const unsigned int CLOCK = 0x020000;
	const unsigned int LOAD  = 0x040000;
	const unsigned int ALL_MASK = (DATA | CLOCK | LOAD);

	FUNC5(ice);

	st = ((addr & 0x7f) << 9) | (data & 0x1ff);
	FUNC1(ice, ice->gpio.direction | ALL_MASK);
	FUNC2(ice, ice->gpio.write_mask & ~ALL_MASK);
	bits = FUNC0(ice) & ~ALL_MASK;

	FUNC3(ice, bits);
	for (i = 0; i < 16; i++) {
		FUNC6(1);
		bits &= ~CLOCK;
		st = (st << 1);
		if (st & 0x10000)
			bits |= DATA;
		else
			bits &= ~DATA;

		FUNC3(ice, bits);

		FUNC6(1);
		bits |= CLOCK;
		FUNC3(ice, bits);
	}

	FUNC6(1);
	bits |= LOAD;
	FUNC3(ice, bits);

	FUNC6(1);
	bits |= (DATA | CLOCK);
	FUNC3(ice, bits);

	FUNC4(ice);
}