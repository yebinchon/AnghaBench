#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct aa_profile {int /*<<< orphan*/  parent; TYPE_1__* ns; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 struct aa_profile* FUNC0 (struct aa_profile*) ; 
 int /*<<< orphan*/  FUNC1 (struct aa_profile*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct aa_profile*) ; 
 struct aa_profile* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct aa_profile *FUNC5(struct aa_profile *new)
{
	struct aa_profile *parent, *newest;

	parent = FUNC4(new->parent,
					   FUNC2(&new->ns->lock));
	newest = FUNC0(parent);

	/* parent replaced in this atomic set? */
	if (newest != parent) {
		FUNC1(parent);
		FUNC3(new->parent, newest);
	} else
		FUNC1(newest);

	return newest;
}