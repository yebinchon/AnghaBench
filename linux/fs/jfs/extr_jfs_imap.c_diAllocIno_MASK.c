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
struct metapage {scalar_t__ data; } ;
struct inomap {int /*<<< orphan*/  im_ipimap; TYPE_1__* im_agctl; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct iag {int* inosmap; int* wmap; int /*<<< orphan*/  nfreeinos; } ;
struct TYPE_2__ {int inofree; } ;

/* Variables and functions */
 int EIO ; 
 int ENOSPC ; 
 int EXTSPERSUM ; 
 int INOSPEREXT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int L2EXTSPERSUM ; 
 int L2INOSPEREXT ; 
 int /*<<< orphan*/  RDWRLOCK_IMAP ; 
 int SMAPSZ ; 
 int FUNC2 (struct inomap*,struct iag*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct inomap*,int,struct metapage**) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,int,int,int,struct iag*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct metapage*) ; 
 int /*<<< orphan*/  FUNC9 (struct metapage*) ; 

__attribute__((used)) static int FUNC10(struct inomap * imap, int agno, struct inode *ip)
{
	int iagno, ino, rc, rem, extno, sword;
	struct metapage *mp;
	struct iag *iagp;

	/* check if there are iags on the ag's free inode list.
	 */
	if ((iagno = imap->im_agctl[agno].inofree) < 0)
		return -ENOSPC;

	/* obtain read lock on imap inode */
	FUNC0(imap->im_ipimap, RDWRLOCK_IMAP);

	/* read the iag at the head of the list.
	 */
	if ((rc = FUNC4(imap, iagno, &mp))) {
		FUNC1(imap->im_ipimap);
		return (rc);
	}
	iagp = (struct iag *) mp->data;

	/* better be free inodes in this iag if it is on the
	 * list.
	 */
	if (!iagp->nfreeinos) {
		FUNC1(imap->im_ipimap);
		FUNC8(mp);
		FUNC6(ip->i_sb, "nfreeinos = 0, but iag on freelist\n");
		return -EIO;
	}

	/* scan the free inode summary map to find an extent
	 * with free inodes.
	 */
	for (sword = 0;; sword++) {
		if (sword >= SMAPSZ) {
			FUNC1(imap->im_ipimap);
			FUNC8(mp);
			FUNC6(ip->i_sb,
				  "free inode not found in summary map\n");
			return -EIO;
		}

		if (~iagp->inosmap[sword])
			break;
	}

	/* found a extent with free inodes. determine
	 * the extent number.
	 */
	rem = FUNC3(FUNC7(iagp->inosmap[sword]), 0);
	if (rem >= EXTSPERSUM) {
		FUNC1(imap->im_ipimap);
		FUNC8(mp);
		FUNC6(ip->i_sb, "no free extent found\n");
		return -EIO;
	}
	extno = (sword << L2EXTSPERSUM) + rem;

	/* find the first free inode in the extent.
	 */
	rem = FUNC3(FUNC7(iagp->wmap[extno]), 0);
	if (rem >= INOSPEREXT) {
		FUNC1(imap->im_ipimap);
		FUNC8(mp);
		FUNC6(ip->i_sb, "free inode not found\n");
		return -EIO;
	}

	/* compute the inode number within the iag.
	 */
	ino = (extno << L2INOSPEREXT) + rem;

	/* allocate the inode.
	 */
	rc = FUNC2(imap, iagp, ino);
	FUNC1(imap->im_ipimap);
	if (rc) {
		FUNC8(mp);
		return (rc);
	}

	/* set the results of the allocation and write the iag.
	 */
	FUNC5(ip, iagno, ino, extno, iagp);
	FUNC9(mp);

	return (0);
}