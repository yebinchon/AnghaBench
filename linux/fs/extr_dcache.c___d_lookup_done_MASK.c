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
struct hlist_bl_head {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  d_alias; int /*<<< orphan*/  d_in_lookup_hash; } ;
struct TYPE_3__ {int /*<<< orphan*/  hash; } ;
struct dentry {int /*<<< orphan*/  d_lru; TYPE_2__ d_u; int /*<<< orphan*/ * d_wait; int /*<<< orphan*/  d_flags; TYPE_1__ d_name; int /*<<< orphan*/  d_parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  DCACHE_PAR_LOOKUP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct hlist_bl_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct hlist_bl_head*) ; 
 struct hlist_bl_head* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct dentry *dentry)
{
	struct hlist_bl_head *b = FUNC5(dentry->d_parent,
						 dentry->d_name.hash);
	FUNC3(b);
	dentry->d_flags &= ~DCACHE_PAR_LOOKUP;
	FUNC2(&dentry->d_u.d_in_lookup_hash);
	FUNC6(dentry->d_wait);
	dentry->d_wait = NULL;
	FUNC4(b);
	FUNC0(&dentry->d_u.d_alias);
	FUNC1(&dentry->d_lru);
}