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
struct dentry {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  list; int /*<<< orphan*/  name; int /*<<< orphan*/  hname; } ;
struct aa_ns {int /*<<< orphan*/  lock; int /*<<< orphan*/  sub_ns; TYPE_1__ base; int /*<<< orphan*/  parent; scalar_t__ level; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 struct aa_ns* FUNC2 (int) ; 
 int FUNC3 (struct aa_ns*,int /*<<< orphan*/ ,char const*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct aa_ns*) ; 
 int /*<<< orphan*/  FUNC5 (struct aa_ns*) ; 
 struct aa_ns* FUNC6 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct aa_ns*) ; 

__attribute__((used)) static struct aa_ns *FUNC12(struct aa_ns *parent, const char *name,
				    struct dentry *dir)
{
	struct aa_ns *ns;
	int error;

	FUNC0(!parent);
	FUNC0(!name);
	FUNC0(!FUNC8(&parent->lock));

	ns = FUNC6(parent->base.hname, name);
	if (!ns)
		return FUNC2(-ENOMEM);
	ns->level = parent->level + 1;
	FUNC9(&ns->lock, ns->level);
	error = FUNC3(ns, FUNC11(parent), name, dir);
	if (error) {
		FUNC1("Failed to create interface for ns %s\n",
			 ns->base.name);
		FUNC10(&ns->lock);
		FUNC4(ns);
		return FUNC2(error);
	}
	ns->parent = FUNC5(parent);
	FUNC7(&ns->base.list, &parent->sub_ns);
	/* add list ref */
	FUNC5(ns);
	FUNC10(&ns->lock);

	return ns;
}