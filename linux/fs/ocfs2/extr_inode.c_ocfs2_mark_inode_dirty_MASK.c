#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct ocfs2_dinode {void* i_mtime_nsec; void* i_mtime; void* i_ctime_nsec; void* i_ctime; void* i_atime_nsec; void* i_atime; void* i_mode; void* i_gid; void* i_uid; void* i_size; void* i_dyn_features; void* i_attr; void* i_clusters; } ;
struct TYPE_8__ {int /*<<< orphan*/  tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct TYPE_7__ {int /*<<< orphan*/  tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct TYPE_6__ {int /*<<< orphan*/  tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct inode {TYPE_3__ i_mtime; TYPE_2__ i_ctime; TYPE_1__ i_atime; int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_nlink; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_9__ {int /*<<< orphan*/  ip_lock; int /*<<< orphan*/  ip_dyn_features; int /*<<< orphan*/  ip_attr; int /*<<< orphan*/  ip_clusters; scalar_t__ ip_blkno; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 TYPE_4__* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_WRITE ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC12 (struct ocfs2_dinode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,struct inode*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (unsigned long long) ; 

int FUNC17(handle_t *handle,
			   struct inode *inode,
			   struct buffer_head *bh)
{
	int status;
	struct ocfs2_dinode *fe = (struct ocfs2_dinode *) bh->b_data;

	FUNC16((unsigned long long)FUNC1(inode)->ip_blkno);

	status = FUNC10(handle, FUNC0(inode), bh,
					 OCFS2_JOURNAL_ACCESS_WRITE);
	if (status < 0) {
		FUNC8(status);
		goto leave;
	}

	FUNC14(&FUNC1(inode)->ip_lock);
	fe->i_clusters = FUNC3(FUNC1(inode)->ip_clusters);
	FUNC9(FUNC1(inode));
	fe->i_attr = FUNC3(FUNC1(inode)->ip_attr);
	fe->i_dyn_features = FUNC2(FUNC1(inode)->ip_dyn_features);
	FUNC15(&FUNC1(inode)->ip_lock);

	fe->i_size = FUNC4(FUNC6(inode));
	FUNC12(fe, inode->i_nlink);
	fe->i_uid = FUNC3(FUNC7(inode));
	fe->i_gid = FUNC3(FUNC5(inode));
	fe->i_mode = FUNC2(inode->i_mode);
	fe->i_atime = FUNC4(inode->i_atime.tv_sec);
	fe->i_atime_nsec = FUNC3(inode->i_atime.tv_nsec);
	fe->i_ctime = FUNC4(inode->i_ctime.tv_sec);
	fe->i_ctime_nsec = FUNC3(inode->i_ctime.tv_nsec);
	fe->i_mtime = FUNC4(inode->i_mtime.tv_sec);
	fe->i_mtime_nsec = FUNC3(inode->i_mtime.tv_nsec);

	FUNC11(handle, bh);
	FUNC13(handle, inode, 1);
leave:
	return status;
}