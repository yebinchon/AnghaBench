#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_6__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int flag; } ;
typedef  TYPE_1__ xad_t ;
struct super_block {int dummy; } ;
struct inode {struct super_block* i_sb; } ;
typedef  int s64 ;
struct TYPE_8__ {int nbperpage; int l2bsize; } ;

/* Variables and functions */
 int EIO ; 
 TYPE_6__* FUNC0 (struct super_block*) ; 
 int POFFSET ; 
 int XAD_NOTRECORDED ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*,char*) ; 
 int FUNC5 (struct inode*,int,int,int*,int*,int*,int /*<<< orphan*/ ) ; 

int FUNC6(struct inode *ip, s64 offset, xad_t * xp)
{
	struct super_block *sb = ip->i_sb;
	int nbperpage = FUNC0(sb)->nbperpage;
	s64 prev;
	int rc = 0;
	s64 xaddr;
	int xlen;
	int xflag;

	/* init the hint as "no hint provided" */
	FUNC1(xp, 0);

	/* determine the starting extent offset of the page previous
	 * to the page containing the offset.
	 */
	prev = ((offset & ~POFFSET) >> FUNC0(sb)->l2bsize) - nbperpage;

	/* if the offset is in the first page of the file, no hint provided.
	 */
	if (prev < 0)
		goto out;

	rc = FUNC5(ip, prev, nbperpage, &xflag, &xaddr, &xlen, 0);

	if ((rc == 0) && xlen) {
		if (xlen != nbperpage) {
			FUNC4(ip->i_sb, "corrupt xtree\n");
			rc = -EIO;
		}
		FUNC1(xp, xaddr);
		FUNC2(xp, xlen);
		FUNC3(xp, prev);
		/*
		 * only preserve the abnr flag within the xad flags
		 * of the returned hint.
		 */
		xp->flag  = xflag & XAD_NOTRECORDED;
	} else
		rc = 0;

out:
	return (rc);
}