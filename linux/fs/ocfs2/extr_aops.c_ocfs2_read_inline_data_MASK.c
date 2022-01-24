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
struct page {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  id_data; } ;
struct TYPE_5__ {TYPE_1__ i_data; } ;
struct ocfs2_dinode {TYPE_2__ id2; int /*<<< orphan*/  i_dyn_features; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  scalar_t__ loff_t ;
struct TYPE_6__ {scalar_t__ ip_blkno; } ;

/* Variables and functions */
 int EROFS ; 
 TYPE_3__* FUNC0 (struct inode*) ; 
 int OCFS2_INLINE_DATA_FL ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 scalar_t__ FUNC3 (struct inode*) ; 
 void* FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (void*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (void*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,unsigned long long,...) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,struct ocfs2_dinode*) ; 

int FUNC11(struct inode *inode, struct page *page,
			   struct buffer_head *di_bh)
{
	void *kaddr;
	loff_t size;
	struct ocfs2_dinode *di = (struct ocfs2_dinode *)di_bh->b_data;

	if (!(FUNC6(di->i_dyn_features) & OCFS2_INLINE_DATA_FL)) {
		FUNC9(inode->i_sb, "Inode %llu lost inline data flag\n",
			    (unsigned long long)FUNC0(inode)->ip_blkno);
		return -EROFS;
	}

	size = FUNC3(inode);

	if (size > PAGE_SIZE ||
	    size > FUNC10(inode->i_sb, di)) {
		FUNC9(inode->i_sb,
			    "Inode %llu has with inline data has bad size: %Lu\n",
			    (unsigned long long)FUNC0(inode)->ip_blkno,
			    (unsigned long long)size);
		return -EROFS;
	}

	kaddr = FUNC4(page);
	if (size)
		FUNC7(kaddr, di->id2.i_data.id_data, size);
	/* Clear the remaining part of the page */
	FUNC8(kaddr + size, 0, PAGE_SIZE - size);
	FUNC2(page);
	FUNC5(kaddr);

	FUNC1(page);

	return 0;
}