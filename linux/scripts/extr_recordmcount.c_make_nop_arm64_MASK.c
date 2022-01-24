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
typedef  int uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  ideal_nop ; 
 scalar_t__ FUNC0 (size_t const,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(void *map, size_t const offset)
{
	uint32_t *ptr;

	ptr = map + offset;
	/* bl <_mcount> is 0x94000000 before relocation */
	if (*ptr != 0x94000000)
		return -1;

	/* Convert to nop */
	if (FUNC0(offset, SEEK_SET) < 0)
		return -1;
	if (FUNC1(ideal_nop, 4) < 0)
		return -1;
	return 0;
}