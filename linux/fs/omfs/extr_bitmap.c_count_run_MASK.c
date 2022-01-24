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

/* Variables and functions */
 int FUNC0 (unsigned long*,int,int) ; 
 int FUNC1 (int,int) ; 

__attribute__((used)) static int FUNC2(unsigned long **addr, int nbits,
		int addrlen, int bit, int max)
{
	int count = 0;
	int x;

	for (; addrlen > 0; addrlen--, addr++) {
		x = FUNC0(*addr, nbits, bit);
		count += x - bit;

		if (x < nbits || count > max)
			return FUNC1(count, max);

		bit = 0;
	}
	return FUNC1(count, max);
}