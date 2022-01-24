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
struct lbuf {int l_flag; int /*<<< orphan*/  l_ioevent; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct lbuf*,int,int) ; 
 int lbmDONE ; 
 int lbmERROR ; 
 int lbmFREE ; 
 int /*<<< orphan*/  FUNC4 (struct lbuf*) ; 

__attribute__((used)) static int FUNC5(struct lbuf * bp, int flag)
{
	unsigned long flags;
	int rc = 0;

	FUNC3("lbmIOWait1: bp:0x%p flag:0x%x:0x%x", bp, bp->l_flag, flag);

	FUNC0(flags);		/* disable+lock */

	FUNC1(bp->l_ioevent, (bp->l_flag & lbmDONE), flags);

	rc = (bp->l_flag & lbmERROR) ? -EIO : 0;

	if (flag & lbmFREE)
		FUNC4(bp);

	FUNC2(flags);	/* unlock+enable */

	FUNC3("lbmIOWait2: bp:0x%p flag:0x%x:0x%x", bp, bp->l_flag, flag);
	return rc;
}