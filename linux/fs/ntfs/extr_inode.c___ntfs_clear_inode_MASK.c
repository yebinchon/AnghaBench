#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  lock; int /*<<< orphan*/ * rl; } ;
struct TYPE_5__ {int /*<<< orphan*/  lock; int /*<<< orphan*/ * rl; } ;
struct TYPE_7__ {scalar_t__ name; scalar_t__ name_len; TYPE_2__ attr_list_rl; int /*<<< orphan*/ * attr_list; TYPE_1__ runlist; } ;
typedef  TYPE_3__ ntfs_inode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ I30 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(ntfs_inode *ni)
{
	/* Free all alocated memory. */
	FUNC1(&ni->runlist.lock);
	if (ni->runlist.rl) {
		FUNC3(ni->runlist.rl);
		ni->runlist.rl = NULL;
	}
	FUNC4(&ni->runlist.lock);

	if (ni->attr_list) {
		FUNC3(ni->attr_list);
		ni->attr_list = NULL;
	}

	FUNC1(&ni->attr_list_rl.lock);
	if (ni->attr_list_rl.rl) {
		FUNC3(ni->attr_list_rl.rl);
		ni->attr_list_rl.rl = NULL;
	}
	FUNC4(&ni->attr_list_rl.lock);

	if (ni->name_len && ni->name != I30) {
		/* Catch bugs... */
		FUNC0(!ni->name);
		FUNC2(ni->name);
	}
}