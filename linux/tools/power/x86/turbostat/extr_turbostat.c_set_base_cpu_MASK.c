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
 int /*<<< orphan*/  ENODEV ; 
 scalar_t__ base_cpu ; 
 int debug ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  outf ; 
 scalar_t__ FUNC2 () ; 

void FUNC3(void)
{
	base_cpu = FUNC2();
	if (base_cpu < 0)
		FUNC0(-ENODEV, "No valid cpus found");

	if (debug > 1)
		FUNC1(outf, "base_cpu = %ld\n", base_cpu);
}