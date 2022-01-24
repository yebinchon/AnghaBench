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
typedef  int /*<<< orphan*/  u8 ;

/* Variables and functions */
 int FUNC0 (unsigned int*) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int* utf8agetab ; 

int FUNC2(u8 maj, u8 min, u8 rev)
{
	int i = FUNC0(utf8agetab) - 1;
	unsigned int sb_utf8version = FUNC1(maj, min, rev);

	while (i >= 0 && utf8agetab[i] != 0) {
		if (sb_utf8version == utf8agetab[i])
			return 1;
		i--;
	}
	return 0;
}