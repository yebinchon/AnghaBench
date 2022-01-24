#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct writeback_control {int dummy; } ;
struct page {TYPE_2__* mapping; } ;
struct inode {TYPE_3__* i_sb; } ;
struct gfs2_sbd {TYPE_1__* sd_vfs; } ;
struct gfs2_inode {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  s_blocksize; } ;
struct TYPE_5__ {struct inode* host; } ;
struct TYPE_4__ {int /*<<< orphan*/  s_blocksize; } ;

/* Variables and functions */
 int /*<<< orphan*/  BH_Dirty ; 
 int /*<<< orphan*/  BH_Uptodate ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 struct gfs2_inode* FUNC2 (struct inode*) ; 
 struct gfs2_sbd* FUNC3 (struct inode*) ; 
 scalar_t__ FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  gfs2_get_block_noalloc ; 
 int /*<<< orphan*/  FUNC6 (struct gfs2_inode*,struct page*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct page*,int /*<<< orphan*/ ,struct writeback_control*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 

__attribute__((used)) static int FUNC9(struct page *page, struct writeback_control *wbc)
{
	struct inode *inode = page->mapping->host;
	struct gfs2_inode *ip = FUNC2(inode);
	struct gfs2_sbd *sdp = FUNC3(inode);

	if (FUNC4(page)) {
		FUNC1(page);
		if (!FUNC8(page)) {
			FUNC5(page, inode->i_sb->s_blocksize,
					     FUNC0(BH_Dirty)|FUNC0(BH_Uptodate));
		}
		FUNC6(ip, page, 0, sdp->sd_vfs->s_blocksize);
	}
	return FUNC7(page, gfs2_get_block_noalloc, wbc);
}