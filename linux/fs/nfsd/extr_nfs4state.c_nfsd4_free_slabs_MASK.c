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
 int /*<<< orphan*/  client_slab ; 
 int /*<<< orphan*/  deleg_slab ; 
 int /*<<< orphan*/  file_slab ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lockowner_slab ; 
 int /*<<< orphan*/  odstate_slab ; 
 int /*<<< orphan*/  openowner_slab ; 
 int /*<<< orphan*/  stateid_slab ; 

void
FUNC1(void)
{
	FUNC0(client_slab);
	FUNC0(openowner_slab);
	FUNC0(lockowner_slab);
	FUNC0(file_slab);
	FUNC0(stateid_slab);
	FUNC0(deleg_slab);
	FUNC0(odstate_slab);
}