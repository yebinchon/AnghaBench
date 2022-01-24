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
typedef  scalar_t__ uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC1(uint32_t hdrsize, uint32_t totalsize,
			uint32_t base, uint32_t size)
{
	if (!FUNC0(hdrsize, totalsize, base))
		return 0; /* block start out of bounds */
	if ((base + size) < base)
		return 0; /* overflow */
	if (!FUNC0(hdrsize, totalsize, base + size))
		return 0; /* block end out of bounds */
	return 1;
}