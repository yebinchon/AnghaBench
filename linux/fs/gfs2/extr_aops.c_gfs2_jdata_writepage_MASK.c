#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct writeback_control {int dummy; } ;
struct page {TYPE_1__* mapping; } ;
struct inode {int dummy; } ;
struct gfs2_sbd {int dummy; } ;
struct gfs2_inode {int /*<<< orphan*/  i_gl; } ;
struct TYPE_4__ {scalar_t__ journal_info; } ;
struct TYPE_3__ {struct inode* host; } ;

/* Variables and functions */
 struct gfs2_inode* FUNC0 (struct inode*) ; 
 struct gfs2_sbd* FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 int FUNC3 (struct page*,struct writeback_control*) ; 
 TYPE_2__* current ; 
 scalar_t__ FUNC4 (struct gfs2_sbd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct writeback_control*,struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 

__attribute__((used)) static int FUNC8(struct page *page, struct writeback_control *wbc)
{
	struct inode *inode = page->mapping->host;
	struct gfs2_inode *ip = FUNC0(inode);
	struct gfs2_sbd *sdp = FUNC1(inode);
	int ret;

	if (FUNC4(sdp, FUNC5(ip->i_gl)))
		goto out;
	if (FUNC2(page) || current->journal_info)
		goto out_ignore;
	ret = FUNC3(page, wbc);
	return ret;

out_ignore:
	FUNC6(wbc, page);
out:
	FUNC7(page);
	return 0;
}