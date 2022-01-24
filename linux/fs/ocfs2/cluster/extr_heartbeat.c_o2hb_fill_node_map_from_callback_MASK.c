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
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  O2NM_MAX_NODES ; 
 int /*<<< orphan*/  FUNC2 (unsigned long*,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  o2hb_live_node_bitmap ; 

__attribute__((used)) static void FUNC3(unsigned long *map,
					     unsigned bytes)
{
	FUNC1(bytes < (FUNC0(O2NM_MAX_NODES) * sizeof(unsigned long)));

	FUNC2(map, &o2hb_live_node_bitmap, bytes);
}