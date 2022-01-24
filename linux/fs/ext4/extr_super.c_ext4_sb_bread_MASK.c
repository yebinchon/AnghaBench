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
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  sector_t ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct buffer_head* FUNC0 (int /*<<< orphan*/ ) ; 
 int REQ_META ; 
 int /*<<< orphan*/  REQ_OP_READ ; 
 scalar_t__ FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 struct buffer_head* FUNC4 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 

struct buffer_head *
FUNC6(struct super_block *sb, sector_t block, int op_flags)
{
	struct buffer_head *bh = FUNC4(sb, block);

	if (bh == NULL)
		return FUNC0(-ENOMEM);
	if (FUNC1(bh))
		return bh;
	FUNC2(REQ_OP_READ, REQ_META | op_flags, 1, &bh);
	FUNC5(bh);
	if (FUNC1(bh))
		return bh;
	FUNC3(bh);
	return FUNC0(-EIO);
}