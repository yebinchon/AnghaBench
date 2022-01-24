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
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;
typedef  int /*<<< orphan*/  ext4_lblk_t ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 struct buffer_head* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct buffer_head*) ; 
 int REQ_META ; 
 int /*<<< orphan*/  REQ_OP_READ ; 
 int REQ_PRIO ; 
 scalar_t__ FUNC2 (struct buffer_head*) ; 
 scalar_t__ FUNC3 (struct buffer_head*) ; 
 struct buffer_head* FUNC4 (int /*<<< orphan*/ *,struct inode*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*) ; 

struct buffer_head *FUNC8(handle_t *handle, struct inode *inode,
			       ext4_lblk_t block, int map_flags)
{
	struct buffer_head *bh;

	bh = FUNC4(handle, inode, block, map_flags);
	if (FUNC1(bh))
		return bh;
	if (!bh || FUNC3(bh))
		return bh;
	FUNC5(REQ_OP_READ, REQ_META | REQ_PRIO, 1, &bh);
	FUNC7(bh);
	if (FUNC2(bh))
		return bh;
	FUNC6(bh);
	return FUNC0(-EIO);
}