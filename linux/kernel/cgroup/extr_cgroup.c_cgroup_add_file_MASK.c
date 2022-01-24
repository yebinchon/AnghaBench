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
struct lock_class_key {int dummy; } ;
struct kernfs_node {int dummy; } ;
struct cgroup_subsys_state {int dummy; } ;
struct cgroup_file {struct kernfs_node* kn; int /*<<< orphan*/  notify_timer; } ;
struct cgroup {int /*<<< orphan*/  kn; } ;
struct cftype {int file_offset; int /*<<< orphan*/  kf_ops; struct lock_class_key lockdep_key; } ;

/* Variables and functions */
 int CGROUP_FILE_NAME_MAX ; 
 int /*<<< orphan*/  GLOBAL_ROOT_GID ; 
 int /*<<< orphan*/  GLOBAL_ROOT_UID ; 
 scalar_t__ FUNC0 (struct kernfs_node*) ; 
 int FUNC1 (struct kernfs_node*) ; 
 struct kernfs_node* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cftype*,int /*<<< orphan*/ *,struct lock_class_key*) ; 
 int /*<<< orphan*/  cgroup_file_kn_lock ; 
 int /*<<< orphan*/  FUNC3 (struct cftype*) ; 
 int /*<<< orphan*/  FUNC4 (struct cgroup*,struct cftype*,char*) ; 
 int /*<<< orphan*/  cgroup_file_notify_timer ; 
 int FUNC5 (struct kernfs_node*) ; 
 int /*<<< orphan*/  FUNC6 (struct kernfs_node*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct cgroup_subsys_state *css, struct cgroup *cgrp,
			   struct cftype *cft)
{
	char name[CGROUP_FILE_NAME_MAX];
	struct kernfs_node *kn;
	struct lock_class_key *key = NULL;
	int ret;

#ifdef CONFIG_DEBUG_LOCK_ALLOC
	key = &cft->lockdep_key;
#endif
	kn = FUNC2(cgrp->kn, FUNC4(cgrp, cft, name),
				  FUNC3(cft),
				  GLOBAL_ROOT_UID, GLOBAL_ROOT_GID,
				  0, cft->kf_ops, cft,
				  NULL, key);
	if (FUNC0(kn))
		return FUNC1(kn);

	ret = FUNC5(kn);
	if (ret) {
		FUNC6(kn);
		return ret;
	}

	if (cft->file_offset) {
		struct cgroup_file *cfile = (void *)css + cft->file_offset;

		FUNC9(&cfile->notify_timer, cgroup_file_notify_timer, 0);

		FUNC7(&cgroup_file_kn_lock);
		cfile->kn = kn;
		FUNC8(&cgroup_file_kn_lock);
	}

	return 0;
}