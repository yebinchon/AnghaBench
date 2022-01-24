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
typedef  int /*<<< orphan*/  udf_pblk_t ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  REQ_OP_READ ; 
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 scalar_t__ FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct buffer_head**) ; 
 struct buffer_head* FUNC3 (struct inode*,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 

struct buffer_head *FUNC5(struct inode *inode, udf_pblk_t block,
			      int create, int *err)
{
	struct buffer_head *bh = NULL;

	bh = FUNC3(inode, block, create, err);
	if (!bh)
		return NULL;

	if (FUNC1(bh))
		return bh;

	FUNC2(REQ_OP_READ, 0, 1, &bh);

	FUNC4(bh);
	if (FUNC1(bh))
		return bh;

	FUNC0(bh);
	*err = -EIO;
	return NULL;
}