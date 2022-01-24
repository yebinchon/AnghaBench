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
struct padata_instance {int flags; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EINVAL ; 
 int PADATA_INVALID ; 
 int /*<<< orphan*/  FUNC0 (struct padata_instance*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct padata_instance *pinst)
{
	int err = 0;

	FUNC1(&pinst->lock);

	if (pinst->flags & PADATA_INVALID)
		err = -EINVAL;

	FUNC0(pinst);

	FUNC2(&pinst->lock);

	return err;
}