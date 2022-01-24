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
struct workqueue_attrs {int /*<<< orphan*/  cpumask; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpu_possible_mask ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct workqueue_attrs*) ; 
 struct workqueue_attrs* FUNC3 (int,int /*<<< orphan*/ ) ; 

struct workqueue_attrs *FUNC4(void)
{
	struct workqueue_attrs *attrs;

	attrs = FUNC3(sizeof(*attrs), GFP_KERNEL);
	if (!attrs)
		goto fail;
	if (!FUNC0(&attrs->cpumask, GFP_KERNEL))
		goto fail;

	FUNC1(attrs->cpumask, cpu_possible_mask);
	return attrs;
fail:
	FUNC2(attrs);
	return NULL;
}