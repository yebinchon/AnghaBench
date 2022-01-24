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
 unsigned int VT1724_PRODIGY192_CCLK ; 
 int VT1724_PRODIGY192_CDIN ; 
 int FUNC0 (struct snd_ice1712*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ice1712*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static unsigned char FUNC3(struct snd_ice1712 *ice, unsigned int gpio,
			       int idx)
{
	unsigned char data = 0;

	for (; idx >= 0; idx--) {
		/* drop clock */
		gpio &= ~VT1724_PRODIGY192_CCLK;
		FUNC1(ice, gpio);
		FUNC2(1);
		/* read data */
		if (FUNC0(ice) & VT1724_PRODIGY192_CDIN)
			data |= (1 << idx);
		FUNC2(1);
		/* raise clock */
		gpio |= VT1724_PRODIGY192_CCLK;
		FUNC1(ice, gpio);
		FUNC2(1);
	}
	return data;
}