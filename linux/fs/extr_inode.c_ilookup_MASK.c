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
struct inode {int dummy; } ;
struct hlist_head {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct inode*) ; 
 struct inode* FUNC1 (struct super_block*,struct hlist_head*,unsigned long) ; 
 int FUNC2 (struct super_block*,unsigned long) ; 
 int /*<<< orphan*/  inode_hash_lock ; 
 struct hlist_head* inode_hashtable ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 

struct inode *FUNC9(struct super_block *sb, unsigned long ino)
{
	struct hlist_head *head = inode_hashtable + FUNC2(sb, ino);
	struct inode *inode;
again:
	FUNC5(&inode_hash_lock);
	inode = FUNC1(sb, head, ino);
	FUNC6(&inode_hash_lock);

	if (inode) {
		if (FUNC0(inode))
			return NULL;
		FUNC8(inode);
		if (FUNC7(FUNC3(inode))) {
			FUNC4(inode);
			goto again;
		}
	}
	return inode;
}