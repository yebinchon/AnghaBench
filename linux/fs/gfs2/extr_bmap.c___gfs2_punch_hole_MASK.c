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
struct inode {int dummy; } ;
struct gfs2_sbd {int dummy; } ;
struct gfs2_inode {int dummy; } ;
struct file {int dummy; } ;
typedef  unsigned int loff_t ;
struct TYPE_2__ {scalar_t__ journal_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct gfs2_inode* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  GFS2_JTRUNC_REVOKES ; 
 struct gfs2_sbd* FUNC2 (struct inode*) ; 
 scalar_t__ RES_DINODE ; 
 int RES_JDATA ; 
 TYPE_1__* current ; 
 struct inode* FUNC3 (struct file*) ; 
 int /*<<< orphan*/  FUNC4 (struct file*) ; 
 int FUNC5 (struct inode*,unsigned int,unsigned int) ; 
 scalar_t__ FUNC6 (struct gfs2_inode*) ; 
 scalar_t__ FUNC7 (struct gfs2_inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,unsigned int,unsigned int) ; 
 int FUNC9 (struct gfs2_sbd*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct gfs2_sbd*) ; 
 unsigned int FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*) ; 
 int FUNC13 (struct gfs2_inode*,unsigned int,unsigned int) ; 
 int FUNC14 (struct inode*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*,unsigned int,unsigned int) ; 

int FUNC16(struct file *file, loff_t offset, loff_t length)
{
	struct inode *inode = FUNC3(file);
	struct gfs2_inode *ip = FUNC1(inode);
	struct gfs2_sbd *sdp = FUNC2(inode);
	int error;

	if (FUNC6(ip))
		error = FUNC9(sdp, RES_DINODE + 2 * RES_JDATA,
					 GFS2_JTRUNC_REVOKES);
	else
		error = FUNC9(sdp, RES_DINODE, 0);
	if (error)
		return error;

	if (FUNC7(ip)) {
		error = FUNC14(inode, offset, length);
		if (error)
			goto out;
	} else {
		unsigned int start_off, end_len, blocksize;

		blocksize = FUNC11(inode);
		start_off = offset & (blocksize - 1);
		end_len = (offset + length) & (blocksize - 1);
		if (start_off) {
			unsigned int len = length;
			if (length > blocksize - start_off)
				len = blocksize - start_off;
			error = FUNC5(inode, offset, len);
			if (error)
				goto out;
			if (start_off + length < blocksize)
				end_len = 0;
		}
		if (end_len) {
			error = FUNC5(inode,
				offset + length - end_len, end_len);
			if (error)
				goto out;
		}
	}

	if (FUNC6(ip)) {
		FUNC0(!current->journal_info);
		FUNC8(inode, offset, length);
	} else
		FUNC15(inode, offset, offset + length - 1);

	FUNC4(file);
	FUNC12(inode);

	if (current->journal_info)
		FUNC10(sdp);

	if (!FUNC7(ip))
		error = FUNC13(ip, offset, length);

out:
	if (current->journal_info)
		FUNC10(sdp);
	return error;
}