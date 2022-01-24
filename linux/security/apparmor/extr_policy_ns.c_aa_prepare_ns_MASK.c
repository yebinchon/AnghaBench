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
struct aa_ns {int /*<<< orphan*/  lock; int /*<<< orphan*/  sub_ns; int /*<<< orphan*/  level; } ;

/* Variables and functions */
 struct aa_ns* FUNC0 (struct aa_ns*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 struct aa_ns* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

struct aa_ns *FUNC5(struct aa_ns *parent, const char *name)
{
	struct aa_ns *ns;

	FUNC3(&parent->lock, parent->level);
	/* try and find the specified ns and if it doesn't exist create it */
	/* released by caller */
	ns = FUNC2(FUNC1(&parent->sub_ns, name));
	if (!ns)
		ns = FUNC0(parent, name, NULL);
	FUNC4(&parent->lock);

	/* return ref */
	return ns;
}