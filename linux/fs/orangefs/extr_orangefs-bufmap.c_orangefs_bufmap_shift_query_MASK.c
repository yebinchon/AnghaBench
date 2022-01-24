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
struct orangefs_bufmap {int desc_shift; } ;

/* Variables and functions */
 struct orangefs_bufmap* __orangefs_bufmap ; 
 int /*<<< orphan*/  orangefs_bufmap_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2(void)
{
	struct orangefs_bufmap *bufmap;
	int shift = 0;
	FUNC0(&orangefs_bufmap_lock);
	bufmap = __orangefs_bufmap;
	if (bufmap)
		shift = bufmap->desc_shift;
	FUNC1(&orangefs_bufmap_lock);
	return shift;
}