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
struct machine {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  perf_event__process ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct machine*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC1(struct machine *machine)
{
	return FUNC0(NULL,
					      perf_event__process,
					      machine, 0, 1);
}