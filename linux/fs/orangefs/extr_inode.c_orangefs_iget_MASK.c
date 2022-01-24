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
struct super_block {int dummy; } ;
struct orangefs_object_kref {int /*<<< orphan*/  fs_id; int /*<<< orphan*/  khandle; } ;
struct inode {int i_state; unsigned long i_ino; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct inode* FUNC0 (int) ; 
 int /*<<< orphan*/  GOSSIP_INODE_DEBUG ; 
 int I_NEW ; 
 int /*<<< orphan*/  ORANGEFS_GETATTR_NEW ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long,unsigned long) ; 
 struct inode* FUNC2 (struct super_block*,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct orangefs_object_kref*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 unsigned long FUNC4 (struct orangefs_object_kref*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int FUNC6 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  orangefs_set_inode ; 
 int /*<<< orphan*/  orangefs_test_inode ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 

struct inode *FUNC8(struct super_block *sb,
		struct orangefs_object_kref *ref)
{
	struct inode *inode = NULL;
	unsigned long hash;
	int error;

	hash = FUNC4(ref);
	inode = FUNC2(sb,
			hash,
			orangefs_test_inode,
			orangefs_set_inode,
			ref);

	if (!inode)
		return FUNC0(-ENOMEM);

	if (!(inode->i_state & I_NEW))
		return inode;

	error = FUNC6(inode, ORANGEFS_GETATTR_NEW);
	if (error) {
		FUNC3(inode);
		return FUNC0(error);
	}

	inode->i_ino = hash;	/* needed for stat etc */
	FUNC5(inode);
	FUNC7(inode);

	FUNC1(GOSSIP_INODE_DEBUG,
		     "iget handle %pU, fsid %d hash %ld i_ino %lu\n",
		     &ref->khandle,
		     ref->fs_id,
		     hash,
		     inode->i_ino);

	return inode;
}