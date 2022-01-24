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
struct inode {int /*<<< orphan*/  i_sb; } ;
struct buffer_head {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  i_file_acl; } ;

/* Variables and functions */
 struct buffer_head* FUNC0 (int) ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  REQ_PRIO ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 struct buffer_head* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct inode*,struct buffer_head*) ; 

__attribute__((used)) static struct buffer_head *FUNC6(struct inode *inode)
{
	struct buffer_head *bh;
	int error;

	if (!FUNC1(inode)->i_file_acl)
		return NULL;
	bh = FUNC4(inode->i_sb, FUNC1(inode)->i_file_acl, REQ_PRIO);
	if (FUNC2(bh))
		return bh;
	error = FUNC5(inode, bh);
	if (error) {
		FUNC3(bh);
		return FUNC0(error);
	}
	return bh;
}