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
struct snd_ice1712 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_ice1712*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ROUTE_PLAYBACK ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 

int FUNC3(struct snd_ice1712 *ice, int shift)
{
	unsigned long val;
	unsigned char eitem;
	static const unsigned char xlate[8] = {
		0, 255, 1, 2, 255, 255, 3, 4,
	};

	val = FUNC1(FUNC0(ice, ROUTE_PLAYBACK));
	val >>= shift;
	val &= 7; /* we now have 3 bits per output */
	eitem = xlate[val];
	if (eitem == 255) {
		FUNC2();
		return 0;
	}
	return eitem;
}