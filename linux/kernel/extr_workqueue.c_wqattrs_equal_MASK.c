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
struct workqueue_attrs {scalar_t__ nice; int /*<<< orphan*/  cpumask; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC1(const struct workqueue_attrs *a,
			  const struct workqueue_attrs *b)
{
	if (a->nice != b->nice)
		return false;
	if (!FUNC0(a->cpumask, b->cpumask))
		return false;
	return true;
}