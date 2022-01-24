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
typedef  unsigned int u64 ;
struct inode {unsigned int i_size; } ;
struct gfs2_sbd {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; } ;
struct gfs2_inode {TYPE_1__ i_inode; int /*<<< orphan*/  i_diskflags; int /*<<< orphan*/  i_gl; } ;
struct gfs2_dinode {int dummy; } ;
struct buffer_head {int /*<<< orphan*/  b_data; } ;
struct TYPE_4__ {scalar_t__ journal_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFS2_DIF_TRUNC_IN_PROG ; 
 struct gfs2_inode* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  GFS2_JTRUNC_REVOKES ; 
 struct gfs2_sbd* FUNC1 (struct inode*) ; 
 scalar_t__ RES_DINODE ; 
 scalar_t__ RES_JDATA ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (struct inode*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct gfs2_inode*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct gfs2_inode*) ; 
 scalar_t__ FUNC8 (struct gfs2_inode*) ; 
 int FUNC9 (struct inode*,unsigned int,unsigned int) ; 
 int FUNC10 (struct gfs2_inode*,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct buffer_head*) ; 
 int FUNC12 (struct gfs2_sbd*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct gfs2_sbd*) ; 
 unsigned int FUNC14 (struct inode*) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*,unsigned int) ; 
 int /*<<< orphan*/  FUNC16 (struct inode*,unsigned int) ; 

__attribute__((used)) static int FUNC17(struct inode *inode, u64 newsize)
{
	struct gfs2_inode *ip = FUNC0(inode);
	struct gfs2_sbd *sdp = FUNC1(inode);
	struct buffer_head *dibh = NULL;
	int journaled = FUNC7(ip);
	u64 oldsize = inode->i_size;
	int error;

	if (journaled)
		error = FUNC12(sdp, RES_DINODE + RES_JDATA, GFS2_JTRUNC_REVOKES);
	else
		error = FUNC12(sdp, RES_DINODE, 0);
	if (error)
		return error;

	error = FUNC10(ip, &dibh);
	if (error)
		goto out;

	FUNC11(ip->i_gl, dibh);

	if (FUNC8(ip)) {
		FUNC5(dibh, sizeof(struct gfs2_dinode) + newsize);
	} else {
		unsigned int blocksize = FUNC14(inode);
		unsigned int offs = newsize & (blocksize - 1);
		if (offs) {
			error = FUNC4(inode, newsize,
						      blocksize - offs);
			if (error)
				goto out;
		}
		ip->i_diskflags |= GFS2_DIF_TRUNC_IN_PROG;
	}

	FUNC15(inode, newsize);
	ip->i_inode.i_mtime = ip->i_inode.i_ctime = FUNC3(&ip->i_inode);
	FUNC6(ip, dibh->b_data);

	if (journaled)
		error = FUNC9(inode, oldsize, newsize);
	else
		FUNC16(inode, newsize);

out:
	FUNC2(dibh);
	if (current->journal_info)
		FUNC13(sdp);
	return error;
}