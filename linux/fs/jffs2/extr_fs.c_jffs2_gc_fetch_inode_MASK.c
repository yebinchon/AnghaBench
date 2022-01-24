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
struct jffs2_sb_info {int /*<<< orphan*/  inocache_lock; int /*<<< orphan*/  inocache_wq; } ;
struct jffs2_inode_info {int dummy; } ;
struct jffs2_inode_cache {scalar_t__ state; int /*<<< orphan*/  ino; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 struct jffs2_inode_info* FUNC0 (struct inode*) ; 
 struct jffs2_inode_info* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ INO_STATE_CHECKEDABSENT ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 struct jffs2_inode_info* FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct jffs2_sb_info*) ; 
 struct inode* FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 scalar_t__ FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,int,...) ; 
 struct jffs2_inode_cache* FUNC9 (struct jffs2_sb_info*,int) ; 
 struct inode* FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

struct jffs2_inode_info *FUNC15(struct jffs2_sb_info *c,
					      int inum, int unlinked)
{
	struct inode *inode;
	struct jffs2_inode_cache *ic;

	if (unlinked) {
		/* The inode has zero nlink but its nodes weren't yet marked
		   obsolete. This has to be because we're still waiting for
		   the final (close() and) iput() to happen.

		   There's a possibility that the final iput() could have
		   happened while we were contemplating. In order to ensure
		   that we don't cause a new read_inode() (which would fail)
		   for the inode in question, we use ilookup() in this case
		   instead of iget().

		   The nlink can't _become_ zero at this point because we're
		   holding the alloc_sem, and jffs2_do_unlink() would also
		   need that while decrementing nlink on any inode.
		*/
		inode = FUNC5(FUNC4(c), inum);
		if (!inode) {
			FUNC8(1, "ilookup() failed for ino #%u; inode is probably deleted.\n",
				  inum);

			FUNC13(&c->inocache_lock);
			ic = FUNC9(c, inum);
			if (!ic) {
				FUNC8(1, "Inode cache for ino #%u is gone\n",
					  inum);
				FUNC14(&c->inocache_lock);
				return NULL;
			}
			if (ic->state != INO_STATE_CHECKEDABSENT) {
				/* Wait for progress. Don't just loop */
				FUNC8(1, "Waiting for ino #%u in state %d\n",
					  ic->ino, ic->state);
				FUNC12(&c->inocache_wq, &c->inocache_lock);
			} else {
				FUNC14(&c->inocache_lock);
			}

			return NULL;
		}
	} else {
		/* Inode has links to it still; they're not going away because
		   jffs2_do_unlink() would need the alloc_sem and we have it.
		   Just iget() it, and if read_inode() is necessary that's OK.
		*/
		inode = FUNC10(FUNC4(c), inum);
		if (FUNC2(inode))
			return FUNC0(inode);
	}
	if (FUNC7(inode)) {
		FUNC11("Eep. read_inode() failed for ino #%u. unlinked %d\n",
			  inum, unlinked);
		/* NB. This will happen again. We need to do something appropriate here. */
		FUNC6(inode);
		return FUNC1(-EIO);
	}

	return FUNC3(inode);
}