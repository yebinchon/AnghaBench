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
struct tick_device {int /*<<< orphan*/  evtdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct tick_device* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tick_cpu_device ; 

void FUNC2(void)
{
	struct tick_device *td = FUNC1(&tick_cpu_device);

	FUNC0(td->evtdev);
}