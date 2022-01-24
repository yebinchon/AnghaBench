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
 scalar_t__ FUNC0 (unsigned char,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static int FUNC2(unsigned long addr, unsigned int count)
{
	unsigned char c;
	while (count--) {
		if (FUNC0(c, addr))
			return 0;
		FUNC1("%02x", c);
		addr++;
	}
	FUNC1("\n");
	return 0;
}