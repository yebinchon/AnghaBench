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
struct nilfs_snapshot_list {void* ssl_next; void* ssl_prev; } ;
struct nilfs_cpfile_header {int /*<<< orphan*/  ch_nsnapshots; struct nilfs_snapshot_list ch_snapshot_list; } ;
struct nilfs_checkpoint {struct nilfs_snapshot_list cp_snapshot_list; } ;
struct inode {int dummy; } ;
struct buffer_head {int /*<<< orphan*/  b_page; } ;
typedef  scalar_t__ __u64 ;
struct TYPE_2__ {int /*<<< orphan*/  mi_sem; } ;

/* Variables and functions */
 int ENOENT ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 void* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC8 (void*) ; 
 int /*<<< orphan*/  FUNC9 (struct buffer_head*) ; 
 scalar_t__ FUNC10 (struct nilfs_checkpoint*) ; 
 int /*<<< orphan*/  FUNC11 (struct nilfs_checkpoint*) ; 
 scalar_t__ FUNC12 (struct nilfs_checkpoint*) ; 
 struct nilfs_checkpoint* FUNC13 (struct inode*,scalar_t__,struct buffer_head*,void*) ; 
 struct nilfs_cpfile_header* FUNC14 (struct inode*,struct buffer_head*,void*) ; 
 struct nilfs_snapshot_list* FUNC15 (struct inode*,scalar_t__,struct buffer_head*,void*) ; 
 unsigned long FUNC16 (struct inode*,scalar_t__) ; 
 int FUNC17 (struct inode*,scalar_t__,int /*<<< orphan*/ ,struct buffer_head**) ; 
 int FUNC18 (struct inode*,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC19 (struct inode*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC21(struct inode *cpfile, __u64 cno)
{
	struct buffer_head *header_bh, *curr_bh, *prev_bh, *cp_bh;
	struct nilfs_cpfile_header *header;
	struct nilfs_checkpoint *cp;
	struct nilfs_snapshot_list *list;
	__u64 curr, prev;
	unsigned long curr_blkoff, prev_blkoff;
	void *kaddr;
	int ret;

	if (cno == 0)
		return -ENOENT; /* checkpoint number 0 is invalid */
	FUNC3(&FUNC0(cpfile)->mi_sem);

	ret = FUNC17(cpfile, cno, 0, &cp_bh);
	if (ret < 0)
		goto out_sem;
	kaddr = FUNC5(cp_bh->b_page);
	cp = FUNC13(cpfile, cno, cp_bh, kaddr);
	if (FUNC10(cp)) {
		ret = -ENOENT;
		FUNC6(kaddr);
		goto out_cp;
	}
	if (FUNC12(cp)) {
		ret = 0;
		FUNC6(kaddr);
		goto out_cp;
	}
	FUNC6(kaddr);

	ret = FUNC18(cpfile, &header_bh);
	if (ret < 0)
		goto out_cp;
	kaddr = FUNC5(header_bh->b_page);
	header = FUNC14(cpfile, header_bh, kaddr);
	list = &header->ch_snapshot_list;
	curr_bh = header_bh;
	FUNC4(curr_bh);
	curr = 0;
	curr_blkoff = 0;
	prev = FUNC8(list->ssl_prev);
	while (prev > cno) {
		prev_blkoff = FUNC16(cpfile, prev);
		curr = prev;
		if (curr_blkoff != prev_blkoff) {
			FUNC6(kaddr);
			FUNC1(curr_bh);
			ret = FUNC17(cpfile, curr,
								0, &curr_bh);
			if (ret < 0)
				goto out_header;
			kaddr = FUNC5(curr_bh->b_page);
		}
		curr_blkoff = prev_blkoff;
		cp = FUNC13(
			cpfile, curr, curr_bh, kaddr);
		list = &cp->cp_snapshot_list;
		prev = FUNC8(list->ssl_prev);
	}
	FUNC6(kaddr);

	if (prev != 0) {
		ret = FUNC17(cpfile, prev, 0,
							&prev_bh);
		if (ret < 0)
			goto out_curr;
	} else {
		prev_bh = header_bh;
		FUNC4(prev_bh);
	}

	kaddr = FUNC5(curr_bh->b_page);
	list = FUNC15(
		cpfile, curr, curr_bh, kaddr);
	list->ssl_prev = FUNC2(cno);
	FUNC6(kaddr);

	kaddr = FUNC5(cp_bh->b_page);
	cp = FUNC13(cpfile, cno, cp_bh, kaddr);
	cp->cp_snapshot_list.ssl_next = FUNC2(curr);
	cp->cp_snapshot_list.ssl_prev = FUNC2(prev);
	FUNC11(cp);
	FUNC6(kaddr);

	kaddr = FUNC5(prev_bh->b_page);
	list = FUNC15(
		cpfile, prev, prev_bh, kaddr);
	list->ssl_next = FUNC2(cno);
	FUNC6(kaddr);

	kaddr = FUNC5(header_bh->b_page);
	header = FUNC14(cpfile, header_bh, kaddr);
	FUNC7(&header->ch_nsnapshots, 1);
	FUNC6(kaddr);

	FUNC9(prev_bh);
	FUNC9(curr_bh);
	FUNC9(cp_bh);
	FUNC9(header_bh);
	FUNC19(cpfile);

	FUNC1(prev_bh);

 out_curr:
	FUNC1(curr_bh);

 out_header:
	FUNC1(header_bh);

 out_cp:
	FUNC1(cp_bh);

 out_sem:
	FUNC20(&FUNC0(cpfile)->mi_sem);
	return ret;
}