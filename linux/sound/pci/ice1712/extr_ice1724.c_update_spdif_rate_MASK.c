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
struct snd_ice1712 {int /*<<< orphan*/  reg_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_ice1712*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPDIF_CTRL ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_ice1712*,unsigned int) ; 

__attribute__((used)) static void FUNC5(struct snd_ice1712 *ice, unsigned int rate)
{
	unsigned int val, nval;
	unsigned long flags;

	FUNC2(&ice->reg_lock, flags);
	nval = val = FUNC1(FUNC0(ice, SPDIF_CTRL));
	nval &= ~(7 << 12);
	switch (rate) {
	case 44100: break;
	case 48000: nval |= 2 << 12; break;
	case 32000: nval |= 3 << 12; break;
	case 88200: nval |= 4 << 12; break;
	case 96000: nval |= 5 << 12; break;
	case 192000: nval |= 6 << 12; break;
	case 176400: nval |= 7 << 12; break;
	}
	if (val != nval)
		FUNC4(ice, nval);
	FUNC3(&ice->reg_lock, flags);
}