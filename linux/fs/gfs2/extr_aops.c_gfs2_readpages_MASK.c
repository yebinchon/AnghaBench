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
struct list_head {int dummy; } ;
struct inode {int dummy; } ;
struct gfs2_sbd {int /*<<< orphan*/  sd_flags; } ;
struct gfs2_inode {int /*<<< orphan*/  i_gl; } ;
struct gfs2_holder {int dummy; } ;
struct file {int dummy; } ;
struct address_space {struct inode* host; } ;

/* Variables and functions */
 int EIO ; 
 struct gfs2_inode* FUNC0 (struct inode*) ; 
 struct gfs2_sbd* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  LM_ST_SHARED ; 
 int /*<<< orphan*/  SDF_WITHDRAWN ; 
 int /*<<< orphan*/  gfs2_block_map ; 
 int /*<<< orphan*/  FUNC2 (struct gfs2_holder*) ; 
 int FUNC3 (struct gfs2_holder*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gfs2_holder*) ; 
 int /*<<< orphan*/  FUNC5 (struct gfs2_holder*) ; 
 int /*<<< orphan*/  FUNC6 (struct gfs2_inode*) ; 
 int FUNC7 (struct address_space*,struct list_head*,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static int FUNC10(struct file *file, struct address_space *mapping,
			  struct list_head *pages, unsigned nr_pages)
{
	struct inode *inode = mapping->host;
	struct gfs2_inode *ip = FUNC0(inode);
	struct gfs2_sbd *sdp = FUNC1(inode);
	struct gfs2_holder gh;
	int ret;

	FUNC4(ip->i_gl, LM_ST_SHARED, 0, &gh);
	ret = FUNC3(&gh);
	if (FUNC9(ret))
		goto out_uninit;
	if (!FUNC6(ip))
		ret = FUNC7(mapping, pages, nr_pages, gfs2_block_map);
	FUNC2(&gh);
out_uninit:
	FUNC5(&gh);
	if (FUNC9(FUNC8(SDF_WITHDRAWN, &sdp->sd_flags)))
		ret = -EIO;
	return ret;
}