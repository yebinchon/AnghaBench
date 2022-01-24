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
struct orangefs_bufmap {int dummy; } ;

/* Variables and functions */
 struct orangefs_bufmap* __orangefs_bufmap ; 
 int /*<<< orphan*/  FUNC0 (struct orangefs_bufmap*) ; 
 int /*<<< orphan*/  orangefs_bufmap_lock ; 
 int /*<<< orphan*/  FUNC1 (struct orangefs_bufmap*) ; 
 int /*<<< orphan*/  readdir_map ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rw_map ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(void)
{
	struct orangefs_bufmap *bufmap = __orangefs_bufmap;
	if (!bufmap)
		return;
	FUNC2(&rw_map);
	FUNC2(&readdir_map);
	FUNC3(&orangefs_bufmap_lock);
	__orangefs_bufmap = NULL;
	FUNC4(&orangefs_bufmap_lock);
	FUNC1(bufmap);
	FUNC0(bufmap);
}