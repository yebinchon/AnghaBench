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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u16 ;
struct timespec64 {int tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct inode {int dummy; } ;
struct gfs2_leaf {int /*<<< orphan*/  lf_reserved2; void* lf_sec; void* lf_nsec; void* lf_dist; void* lf_inode; scalar_t__ lf_next; void* lf_dirent_format; scalar_t__ lf_entries; int /*<<< orphan*/  lf_depth; } ;
struct gfs2_inode {int /*<<< orphan*/  i_no_addr; int /*<<< orphan*/  i_gl; } ;
struct gfs2_dirent {int dummy; } ;
struct buffer_head {scalar_t__ b_size; scalar_t__ b_data; } ;

/* Variables and functions */
 int GFS2_FORMAT_DE ; 
 int /*<<< orphan*/  GFS2_FORMAT_LF ; 
 struct gfs2_inode* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  GFS2_METATYPE_LF ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 struct timespec64 FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  empty_name ; 
 int FUNC6 (struct gfs2_inode*,int /*<<< orphan*/ *,unsigned int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct buffer_head* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct buffer_head*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,scalar_t__,struct gfs2_dirent*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct gfs2_leaf *FUNC13(struct inode *inode, struct buffer_head **pbh, u16 depth)
{
	struct gfs2_inode *ip = FUNC0(inode);
	unsigned int n = 1;
	u64 bn;
	int error;
	struct buffer_head *bh;
	struct gfs2_leaf *leaf;
	struct gfs2_dirent *dent;
	struct timespec64 tv = FUNC5(inode);

	error = FUNC6(ip, &bn, &n, 0, NULL);
	if (error)
		return NULL;
	bh = FUNC7(ip->i_gl, bn);
	if (!bh)
		return NULL;

	FUNC11(FUNC1(inode), bn, 1);
	FUNC10(ip->i_gl, bh);
	FUNC8(bh, GFS2_METATYPE_LF, GFS2_FORMAT_LF);
	leaf = (struct gfs2_leaf *)bh->b_data;
	leaf->lf_depth = FUNC2(depth);
	leaf->lf_entries = 0;
	leaf->lf_dirent_format = FUNC3(GFS2_FORMAT_DE);
	leaf->lf_next = 0;
	leaf->lf_inode = FUNC4(ip->i_no_addr);
	leaf->lf_dist = FUNC3(1);
	leaf->lf_nsec = FUNC3(tv.tv_nsec);
	leaf->lf_sec = FUNC4(tv.tv_sec);
	FUNC12(leaf->lf_reserved2, 0, sizeof(leaf->lf_reserved2));
	dent = (struct gfs2_dirent *)(leaf+1);
	FUNC9(&empty_name, bh->b_size - sizeof(struct gfs2_leaf), dent);
	*pbh = bh;
	return leaf;
}