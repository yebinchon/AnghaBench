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
struct page {TYPE_1__* mapping; } ;
struct gfs2_sbd {int /*<<< orphan*/  sd_flags; } ;
struct gfs2_inode {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int EIO ; 
 struct gfs2_inode* FUNC0 (int /*<<< orphan*/ ) ; 
 struct gfs2_sbd* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  SDF_WITHDRAWN ; 
 int /*<<< orphan*/  gfs2_block_map ; 
 int /*<<< orphan*/  gfs2_iomap_ops ; 
 scalar_t__ FUNC2 (struct gfs2_inode*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct page*,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int FUNC7 (struct gfs2_inode*,struct page*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct page*) ; 

__attribute__((used)) static int FUNC11(void *file, struct page *page)
{
	struct gfs2_inode *ip = FUNC0(page->mapping->host);
	struct gfs2_sbd *sdp = FUNC1(page->mapping->host);

	int error;

	if (FUNC3(page->mapping->host) == PAGE_SIZE &&
	    !FUNC6(page)) {
		error = FUNC4(page, &gfs2_iomap_ops);
	} else if (FUNC2(ip)) {
		error = FUNC7(ip, page);
		FUNC10(page);
	} else {
		error = FUNC5(page, gfs2_block_map);
	}

	if (FUNC9(FUNC8(SDF_WITHDRAWN, &sdp->sd_flags)))
		return -EIO;

	return error;
}