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
struct TYPE_3__ {struct kernfs_node* target_kn; } ;
struct kernfs_node {TYPE_1__ symlink; int /*<<< orphan*/  ns; TYPE_2__* iattr; } ;
typedef  int /*<<< orphan*/  kuid_t ;
typedef  int /*<<< orphan*/  kgid_t ;
struct TYPE_4__ {int /*<<< orphan*/  ia_gid; int /*<<< orphan*/  ia_uid; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct kernfs_node* FUNC0 (int) ; 
 int /*<<< orphan*/  GLOBAL_ROOT_GID ; 
 int /*<<< orphan*/  GLOBAL_ROOT_UID ; 
 int /*<<< orphan*/  KERNFS_LINK ; 
 int S_IFLNK ; 
 int S_IRWXUGO ; 
 int FUNC1 (struct kernfs_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct kernfs_node*) ; 
 struct kernfs_node* FUNC3 (struct kernfs_node*,char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct kernfs_node*) ; 
 int /*<<< orphan*/  FUNC5 (struct kernfs_node*) ; 

struct kernfs_node *FUNC6(struct kernfs_node *parent,
				       const char *name,
				       struct kernfs_node *target)
{
	struct kernfs_node *kn;
	int error;
	kuid_t uid = GLOBAL_ROOT_UID;
	kgid_t gid = GLOBAL_ROOT_GID;

	if (target->iattr) {
		uid = target->iattr->ia_uid;
		gid = target->iattr->ia_gid;
	}

	kn = FUNC3(parent, name, S_IFLNK|S_IRWXUGO, uid, gid,
			     KERNFS_LINK);
	if (!kn)
		return FUNC0(-ENOMEM);

	if (FUNC4(parent))
		kn->ns = target->ns;
	kn->symlink.target_kn = target;
	FUNC2(target);	/* ref owned by symlink */

	error = FUNC1(kn);
	if (!error)
		return kn;

	FUNC5(kn);
	return FUNC0(error);
}