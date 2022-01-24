#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;
struct TYPE_4__ {int /*<<< orphan*/  profiles; } ;
struct aa_ns {int /*<<< orphan*/  lock; TYPE_1__ labels; struct aa_ns* parent; int /*<<< orphan*/  sub_ns; TYPE_2__ base; int /*<<< orphan*/  level; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct aa_ns*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct aa_ns*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC9(struct aa_ns *ns)
{
	if (!ns)
		return;

	FUNC4(&ns->lock, ns->level);
	/* release all profiles in this namespace */
	FUNC0(&ns->base.profiles);

	/* release all sub namespaces */
	FUNC3(&ns->sub_ns);

	if (ns->parent) {
		unsigned long flags;

		FUNC7(&ns->labels.lock, flags);
		FUNC1(FUNC6(ns),
				    FUNC6(ns->parent));
		FUNC8(&ns->labels.lock, flags);
	}
	FUNC2(ns);
	FUNC5(&ns->lock);
}