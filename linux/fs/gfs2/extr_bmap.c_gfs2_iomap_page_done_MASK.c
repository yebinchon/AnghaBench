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
struct page {int dummy; } ;
struct iomap {int dummy; } ;
struct inode {int dummy; } ;
struct gfs2_trans {scalar_t__ tr_num_buf_new; } ;
struct gfs2_sbd {int dummy; } ;
struct gfs2_inode {int dummy; } ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_2__ {struct gfs2_trans* journal_info; } ;

/* Variables and functions */
 struct gfs2_inode* FUNC0 (struct inode*) ; 
 struct gfs2_sbd* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  I_DIRTY_DATASYNC ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,int /*<<< orphan*/ ) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC3 (struct gfs2_inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct gfs2_inode*,struct page*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct gfs2_sbd*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct inode *inode, loff_t pos,
				 unsigned copied, struct page *page,
				 struct iomap *iomap)
{
	struct gfs2_trans *tr = current->journal_info;
	struct gfs2_inode *ip = FUNC0(inode);
	struct gfs2_sbd *sdp = FUNC1(inode);

	if (page && !FUNC3(ip))
		FUNC4(ip, page, FUNC6(pos), copied);

	if (tr->tr_num_buf_new)
		FUNC2(inode, I_DIRTY_DATASYNC);

	FUNC5(sdp);
}