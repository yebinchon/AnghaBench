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
 int /*<<< orphan*/  _SC_PAGESIZE ; 
 int /*<<< orphan*/  marker_addr ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,long) ; 
 long FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(void)
{
	long pgsz;

	if (!marker_addr)
		return;

	pgsz = FUNC1(_SC_PAGESIZE);
	if (pgsz == -1)
		return;

	FUNC0(marker_addr, pgsz);
}