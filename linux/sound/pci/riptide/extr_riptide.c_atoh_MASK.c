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
typedef  unsigned int u32 ;

/* Variables and functions */
 int FUNC0 (unsigned char) ; 

__attribute__((used)) static u32 FUNC1(const unsigned char *in, unsigned int len)
{
	u32 sum = 0;
	unsigned int mult = 1;
	unsigned char c;

	while (len) {
		int value;

		c = in[len - 1];
		value = FUNC0(c);
		if (value >= 0)
			sum += mult * value;
		mult *= 16;
		--len;
	}
	return sum;
}