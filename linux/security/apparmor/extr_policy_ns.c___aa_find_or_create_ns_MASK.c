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
struct dentry {int dummy; } ;
struct aa_ns {int /*<<< orphan*/  sub_ns; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  EEXIST ; 
 struct aa_ns* FUNC1 (int /*<<< orphan*/ ) ; 
 struct aa_ns* FUNC2 (struct aa_ns*,char const*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 struct aa_ns* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

struct aa_ns *FUNC6(struct aa_ns *parent, const char *name,
				     struct dentry *dir)
{
	struct aa_ns *ns;

	FUNC0(!FUNC5(&parent->lock));

	/* try and find the specified ns */
	/* released by caller */
	ns = FUNC4(FUNC3(&parent->sub_ns, name));
	if (!ns)
		ns = FUNC2(parent, name, dir);
	else
		ns = FUNC1(-EEXIST);

	/* return ref */
	return ns;
}