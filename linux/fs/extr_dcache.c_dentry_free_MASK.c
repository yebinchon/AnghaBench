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
struct TYPE_4__ {int /*<<< orphan*/  count; } ;
struct external_name {TYPE_2__ u; } ;
struct TYPE_3__ {int /*<<< orphan*/  d_rcu; int /*<<< orphan*/  d_alias; } ;
struct dentry {int d_flags; TYPE_1__ d_u; } ;

/* Variables and functions */
 int DCACHE_NORCU ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (int /*<<< orphan*/ *)) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*) ; 
 struct external_name* FUNC6 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct dentry *dentry)
{
	FUNC0(!FUNC7(&dentry->d_u.d_alias));
	if (FUNC9(FUNC5(dentry))) {
		struct external_name *p = FUNC6(dentry);
		if (FUNC8(FUNC3(&p->u.count))) {
			FUNC4(&dentry->d_u.d_rcu, __d_free_external);
			return;
		}
	}
	/* if dentry was never visible to RCU, immediate free is OK */
	if (dentry->d_flags & DCACHE_NORCU)
		FUNC1(&dentry->d_u.d_rcu);
	else
		FUNC4(&dentry->d_u.d_rcu, __d_free);
}