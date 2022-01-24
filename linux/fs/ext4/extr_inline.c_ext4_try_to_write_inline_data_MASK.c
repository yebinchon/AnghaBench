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
struct page {int dummy; } ;
struct inode {int dummy; } ;
struct ext4_iloc {int /*<<< orphan*/  bh; } ;
struct address_space {int dummy; } ;
typedef  unsigned int loff_t ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_2__ {int /*<<< orphan*/  xattr_sem; } ;

/* Variables and functions */
 unsigned int AOP_FLAG_NOFS ; 
 int ENOMEM ; 
 int ENOSPC ; 
 int /*<<< orphan*/  EXT4_HT_INODE ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct address_space*,struct inode*,unsigned int) ; 
 int FUNC7 (struct inode*,struct ext4_iloc*) ; 
 unsigned int FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (struct inode*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *,struct inode*,unsigned int) ; 
 int FUNC14 (struct inode*,struct page*) ; 
 struct page* FUNC15 (struct address_space*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC16 (struct page*) ; 
 int /*<<< orphan*/  FUNC17 (struct page*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 

int FUNC19(struct address_space *mapping,
				  struct inode *inode,
				  loff_t pos, unsigned len,
				  unsigned flags,
				  struct page **pagep)
{
	int ret;
	handle_t *handle;
	struct page *page;
	struct ext4_iloc iloc;

	if (pos + len > FUNC8(inode))
		goto convert;

	ret = FUNC7(inode, &iloc);
	if (ret)
		return ret;

	/*
	 * The possible write could happen in the inode,
	 * so try to reserve the space in inode first.
	 */
	handle = FUNC11(inode, EXT4_HT_INODE, 1);
	if (FUNC1(handle)) {
		ret = FUNC2(handle);
		handle = NULL;
		goto out;
	}

	ret = FUNC13(handle, inode, pos + len);
	if (ret && ret != -ENOSPC)
		goto out;

	/* We don't have space in inline inode, so convert it to extent. */
	if (ret == -ENOSPC) {
		FUNC12(handle);
		FUNC4(iloc.bh);
		goto convert;
	}

	ret = FUNC10(handle, iloc.bh);
	if (ret)
		goto out;

	flags |= AOP_FLAG_NOFS;

	page = FUNC15(mapping, 0, flags);
	if (!page) {
		ret = -ENOMEM;
		goto out;
	}

	*pagep = page;
	FUNC5(&FUNC0(inode)->xattr_sem);
	if (!FUNC9(inode)) {
		ret = 0;
		FUNC17(page);
		FUNC16(page);
		goto out_up_read;
	}

	if (!FUNC3(page)) {
		ret = FUNC14(inode, page);
		if (ret < 0) {
			FUNC17(page);
			FUNC16(page);
			goto out_up_read;
		}
	}

	ret = 1;
	handle = NULL;
out_up_read:
	FUNC18(&FUNC0(inode)->xattr_sem);
out:
	if (handle && (ret != 1))
		FUNC12(handle);
	FUNC4(iloc.bh);
	return ret;
convert:
	return FUNC6(mapping,
						  inode, flags);
}