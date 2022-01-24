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
struct inode {unsigned long i_ino; int /*<<< orphan*/  i_lock; int /*<<< orphan*/  i_hash; int /*<<< orphan*/  i_state; } ;
struct hlist_head {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  I_NEW ; 
 struct inode* FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 struct inode* FUNC3 (struct super_block*,struct hlist_head*,unsigned long) ; 
 int FUNC4 (struct super_block*,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct hlist_head*) ; 
 int /*<<< orphan*/  inode_hash_lock ; 
 struct hlist_head* inode_hashtable ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*) ; 

struct inode *FUNC13(struct super_block *sb, unsigned long ino)
{
	struct hlist_head *head = inode_hashtable + FUNC4(sb, ino);
	struct inode *inode;
again:
	FUNC9(&inode_hash_lock);
	inode = FUNC3(sb, head, ino);
	FUNC10(&inode_hash_lock);
	if (inode) {
		if (FUNC0(inode))
			return NULL;
		FUNC12(inode);
		if (FUNC11(FUNC7(inode))) {
			FUNC8(inode);
			goto again;
		}
		return inode;
	}

	inode = FUNC1(sb);
	if (inode) {
		struct inode *old;

		FUNC9(&inode_hash_lock);
		/* We released the lock, so.. */
		old = FUNC3(sb, head, ino);
		if (!old) {
			inode->i_ino = ino;
			FUNC9(&inode->i_lock);
			inode->i_state = I_NEW;
			FUNC5(&inode->i_hash, head);
			FUNC10(&inode->i_lock);
			FUNC6(inode);
			FUNC10(&inode_hash_lock);

			/* Return the locked inode with I_NEW set, the
			 * caller is responsible for filling in the contents
			 */
			return inode;
		}

		/*
		 * Uhhuh, somebody else created the same inode under
		 * us. Use the old inode instead of the one we just
		 * allocated.
		 */
		FUNC10(&inode_hash_lock);
		FUNC2(inode);
		if (FUNC0(old))
			return NULL;
		inode = old;
		FUNC12(inode);
		if (FUNC11(FUNC7(inode))) {
			FUNC8(inode);
			goto again;
		}
	}
	return inode;
}