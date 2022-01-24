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
struct inomap {int im_freeiag; int /*<<< orphan*/  im_ipimap; TYPE_1__* im_agctl; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct iag {int* extsmap; scalar_t__ nfreeexts; scalar_t__ iagfree; int /*<<< orphan*/  agstart; } ;
struct TYPE_2__ {int extfree; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int EIO ; 
 int EXTSPERIAG ; 
 int EXTSPERSUM ; 
 int /*<<< orphan*/  FUNC1 (struct inomap*) ; 
 int /*<<< orphan*/  FUNC2 (struct inomap*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int L2EXTSPERSUM ; 
 int L2INOSPEREXT ; 
 int /*<<< orphan*/  RDWRLOCK_IMAP ; 
 int SMAPSZ ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct inomap*,int,struct metapage**) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,int,int,int,struct iag*) ; 
 int FUNC10 (struct inomap*,struct iag*,int) ; 
 int FUNC11 (struct inomap*,int*,int,struct metapage**) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (struct metapage*) ; 
 int /*<<< orphan*/  FUNC15 (struct metapage*) ; 

__attribute__((used)) static int FUNC16(struct inomap * imap, int agno, struct inode *ip)
{
	int rem, iagno, sword, extno, rc;
	struct metapage *mp;
	struct iag *iagp;

	/* check if the ag has any iags with free extents.  if not,
	 * allocate a new iag for the ag.
	 */
	if ((iagno = imap->im_agctl[agno].extfree) < 0) {
		/* If successful, diNewIAG will obtain the read lock on the
		 * imap inode.
		 */
		if ((rc = FUNC11(imap, &iagno, agno, &mp))) {
			return (rc);
		}
		iagp = (struct iag *) mp->data;

		/* set the ag number if this a brand new iag
		 */
		iagp->agstart =
		    FUNC6(FUNC0(agno, imap->im_ipimap));
	} else {
		/* read the iag.
		 */
		FUNC3(imap->im_ipimap, RDWRLOCK_IMAP);
		if ((rc = FUNC8(imap, iagno, &mp))) {
			FUNC4(imap->im_ipimap);
			FUNC12(ip->i_sb, "error reading iag\n");
			return rc;
		}
		iagp = (struct iag *) mp->data;
	}

	/* using the free extent summary map, find a free extent.
	 */
	for (sword = 0;; sword++) {
		if (sword >= SMAPSZ) {
			FUNC14(mp);
			FUNC4(imap->im_ipimap);
			FUNC12(ip->i_sb, "free ext summary map not found\n");
			return -EIO;
		}
		if (~iagp->extsmap[sword])
			break;
	}

	/* determine the extent number of the free extent.
	 */
	rem = FUNC7(FUNC13(iagp->extsmap[sword]), 0);
	if (rem >= EXTSPERSUM) {
		FUNC14(mp);
		FUNC4(imap->im_ipimap);
		FUNC12(ip->i_sb, "free extent not found\n");
		return -EIO;
	}
	extno = (sword << L2EXTSPERSUM) + rem;

	/* initialize the new extent.
	 */
	rc = FUNC10(imap, iagp, extno);
	FUNC4(imap->im_ipimap);
	if (rc) {
		/* something bad happened.  if a new iag was allocated,
		 * place it back on the inode map's iag free list, and
		 * clear the ag number information.
		 */
		if (iagp->nfreeexts == FUNC5(EXTSPERIAG)) {
			FUNC1(imap);
			iagp->iagfree = FUNC5(imap->im_freeiag);
			imap->im_freeiag = iagno;
			FUNC2(imap);
		}
		FUNC15(mp);
		return (rc);
	}

	/* set the results of the allocation and write the iag.
	 */
	FUNC9(ip, iagno, extno << L2INOSPEREXT, extno, iagp);

	FUNC15(mp);

	return (0);
}