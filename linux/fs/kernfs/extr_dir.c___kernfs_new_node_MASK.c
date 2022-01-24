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
typedef  int /*<<< orphan*/  umode_t ;
typedef  scalar_t__ u32 ;
struct kernfs_root {int /*<<< orphan*/  ino_idr; scalar_t__ next_generation; } ;
struct TYPE_2__ {int ino; scalar_t__ generation; } ;
struct kernfs_node {char const* name; unsigned int flags; TYPE_1__ id; int /*<<< orphan*/  mode; int /*<<< orphan*/  rb; int /*<<< orphan*/  active; int /*<<< orphan*/  count; } ;
struct iattr {int ia_valid; int /*<<< orphan*/  ia_gid; int /*<<< orphan*/  ia_uid; } ;
typedef  int /*<<< orphan*/  kuid_t ;
typedef  int /*<<< orphan*/  kgid_t ;

/* Variables and functions */
 int ATTR_GID ; 
 int ATTR_UID ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GLOBAL_ROOT_GID ; 
 int /*<<< orphan*/  GLOBAL_ROOT_UID ; 
 int /*<<< orphan*/  KN_DEACTIVATED_BIAS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct kernfs_node*,struct iattr*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct kernfs_node*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  kernfs_idr_lock ; 
 int /*<<< orphan*/  kernfs_node_cache ; 
 int /*<<< orphan*/  FUNC10 (char const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct kernfs_node*) ; 
 struct kernfs_node* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC13 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct kernfs_node*,struct kernfs_node*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct kernfs_node *FUNC18(struct kernfs_root *root,
					     struct kernfs_node *parent,
					     const char *name, umode_t mode,
					     kuid_t uid, kgid_t gid,
					     unsigned flags)
{
	struct kernfs_node *kn;
	u32 gen;
	int cursor;
	int ret;

	name = FUNC13(name, GFP_KERNEL);
	if (!name)
		return NULL;

	kn = FUNC12(kernfs_node_cache, GFP_KERNEL);
	if (!kn)
		goto err_out1;

	FUNC7(GFP_KERNEL);
	FUNC15(&kernfs_idr_lock);
	cursor = FUNC6(&root->ino_idr);
	ret = FUNC5(&root->ino_idr, kn, 1, 0, GFP_ATOMIC);
	if (ret >= 0 && ret < cursor)
		root->next_generation++;
	gen = root->next_generation;
	FUNC16(&kernfs_idr_lock);
	FUNC8();
	if (ret < 0)
		goto err_out2;
	kn->id.ino = ret;
	kn->id.generation = gen;

	/*
	 * set ino first. This RELEASE is paired with atomic_inc_not_zero in
	 * kernfs_find_and_get_node_by_ino
	 */
	FUNC3(&kn->count, 1);
	FUNC2(&kn->active, KN_DEACTIVATED_BIAS);
	FUNC0(&kn->rb);

	kn->name = name;
	kn->mode = mode;
	kn->flags = flags;

	if (!FUNC17(uid, GLOBAL_ROOT_UID) || !FUNC4(gid, GLOBAL_ROOT_GID)) {
		struct iattr iattr = {
			.ia_valid = ATTR_UID | ATTR_GID,
			.ia_uid = uid,
			.ia_gid = gid,
		};

		ret = FUNC1(kn, &iattr);
		if (ret < 0)
			goto err_out3;
	}

	if (parent) {
		ret = FUNC14(parent, kn);
		if (ret)
			goto err_out3;
	}

	return kn;

 err_out3:
	FUNC9(&root->ino_idr, kn->id.ino);
 err_out2:
	FUNC11(kernfs_node_cache, kn);
 err_out1:
	FUNC10(name);
	return NULL;
}