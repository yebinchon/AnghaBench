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
typedef  int /*<<< orphan*/  u64 ;
typedef  size_t u32 ;
struct ocfs2_super {int dummy; } ;
struct ocfs2_info_freeinode {TYPE_1__* ifi_stat; int /*<<< orphan*/  ifi_req; } ;
struct TYPE_5__ {int /*<<< orphan*/  i_used; int /*<<< orphan*/  i_total; } ;
struct TYPE_6__ {TYPE_2__ bitmap1; } ;
struct ocfs2_dinode {TYPE_3__ id1; } ;
struct inode {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct TYPE_4__ {void* lfi_free; void* lfi_total; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct inode*,struct buffer_head**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct ocfs2_super*,int /*<<< orphan*/ ,int,struct buffer_head**) ; 

__attribute__((used)) static int FUNC9(struct ocfs2_super *osb,
				       struct inode *inode_alloc, u64 blkno,
				       struct ocfs2_info_freeinode *fi,
				       u32 slot)
{
	int status = 0, unlock = 0;

	struct buffer_head *bh = NULL;
	struct ocfs2_dinode *dinode_alloc = NULL;

	if (inode_alloc)
		FUNC1(inode_alloc);

	if (inode_alloc && FUNC5(&fi->ifi_req)) {
		status = FUNC6(inode_alloc, &bh, 0);
		if (status < 0) {
			FUNC4(status);
			goto bail;
		}
		unlock = 1;
	} else {
		status = FUNC8(osb, blkno, 1, &bh);
		if (status < 0) {
			FUNC4(status);
			goto bail;
		}
	}

	dinode_alloc = (struct ocfs2_dinode *)bh->b_data;

	fi->ifi_stat[slot].lfi_total =
		FUNC3(dinode_alloc->id1.bitmap1.i_total);
	fi->ifi_stat[slot].lfi_free =
		FUNC3(dinode_alloc->id1.bitmap1.i_total) -
		FUNC3(dinode_alloc->id1.bitmap1.i_used);

bail:
	if (unlock)
		FUNC7(inode_alloc, 0);

	if (inode_alloc)
		FUNC2(inode_alloc);

	FUNC0(bh);

	return status;
}