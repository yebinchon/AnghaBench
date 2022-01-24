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
struct inomap {int dummy; } ;
struct inode {int /*<<< orphan*/  i_mapping; } ;
struct TYPE_2__ {struct inomap* i_imap; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inomap*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(struct inode *ipimap, int mounterror)
{
	struct inomap *imap = FUNC0(ipimap)->i_imap;

	/*
	 * update the on-disk inode map control structure
	 */

	if (!(mounterror || FUNC2(ipimap)))
		FUNC1(ipimap);

	/*
	 * Invalidate the page cache buffers
	 */
	FUNC4(ipimap->i_mapping, 0);

	/*
	 * free in-memory control structure
	 */
	FUNC3(imap);

	return (0);
}