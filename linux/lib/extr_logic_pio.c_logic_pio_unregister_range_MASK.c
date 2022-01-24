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
struct logic_pio_hwaddr {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  io_range_mutex ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 

void FUNC4(struct logic_pio_hwaddr *range)
{
	FUNC1(&io_range_mutex);
	FUNC0(&range->list);
	FUNC2(&io_range_mutex);
	FUNC3();
}