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
struct super_block {int dummy; } ;
struct reiserfs_iget_args {int /*<<< orphan*/  dirid; int /*<<< orphan*/  objectid; } ;
struct inode {int i_state; } ;
struct TYPE_2__ {int /*<<< orphan*/  k_objectid; int /*<<< orphan*/  k_dir_id; } ;
struct cpu_key {TYPE_1__ on_disk_key; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct inode* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int I_NEW ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct cpu_key const*) ; 
 struct inode* FUNC3 (struct super_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 scalar_t__ FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  reiserfs_find_actor ; 
 int /*<<< orphan*/  reiserfs_init_locked_inode ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,struct reiserfs_iget_args*) ; 
 int /*<<< orphan*/  FUNC7 (struct super_block*,int) ; 
 int FUNC8 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 

struct inode *FUNC10(struct super_block *s, const struct cpu_key *key)
{
	struct inode *inode;
	struct reiserfs_iget_args args;
	int depth;

	args.objectid = key->on_disk_key.k_objectid;
	args.dirid = key->on_disk_key.k_dir_id;
	depth = FUNC8(s);
	inode = FUNC3(s, key->on_disk_key.k_objectid,
			     reiserfs_find_actor, reiserfs_init_locked_inode,
			     (void *)(&args));
	FUNC7(s, depth);
	if (!inode)
		return FUNC0(-ENOMEM);

	if (inode->i_state & I_NEW) {
		FUNC6(inode, &args);
		FUNC9(inode);
	}

	if (FUNC2(FUNC1(inode), key) || FUNC5(inode)) {
		/* either due to i/o error or a stale NFS handle */
		FUNC4(inode);
		inode = NULL;
	}
	return inode;
}