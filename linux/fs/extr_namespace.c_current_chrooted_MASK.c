#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct path {int /*<<< orphan*/  dentry; TYPE_1__* mnt; } ;
struct TYPE_10__ {int /*<<< orphan*/  fs; TYPE_4__* nsproxy; } ;
struct TYPE_9__ {TYPE_3__* mnt_ns; } ;
struct TYPE_8__ {TYPE_2__* root; } ;
struct TYPE_6__ {int /*<<< orphan*/  mnt_root; } ;
struct TYPE_7__ {TYPE_1__ mnt; } ;

/* Variables and functions */
 TYPE_5__* current ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct path*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct path*) ; 
 int /*<<< orphan*/  FUNC3 (struct path*,struct path*) ; 
 int /*<<< orphan*/  FUNC4 (struct path*) ; 
 int /*<<< orphan*/  FUNC5 (struct path*) ; 

bool FUNC6(void)
{
	/* Does the current process have a non-standard root */
	struct path ns_root;
	struct path fs_root;
	bool chrooted;

	/* Find the namespace root */
	ns_root.mnt = &current->nsproxy->mnt_ns->root->mnt;
	ns_root.dentry = ns_root.mnt->mnt_root;
	FUNC4(&ns_root);
	while (FUNC0(ns_root.dentry) && FUNC1(&ns_root))
		;

	FUNC2(current->fs, &fs_root);

	chrooted = !FUNC3(&fs_root, &ns_root);

	FUNC5(&fs_root);
	FUNC5(&ns_root);

	return chrooted;
}