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
struct address_space {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  xattr_sem; } ;

/* Variables and functions */
 scalar_t__ CONVERT_INLINE_DATA ; 
 int ENOMEM ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  EXT4_STATE_MAY_INLINE_DATA ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int FUNC4 (struct page*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ext4_da_get_block_prep ; 
 int FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int FUNC9 (struct inode*,struct page*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 struct page* FUNC11 (struct address_space*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (struct page*) ; 
 int /*<<< orphan*/  FUNC13 (struct page*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(struct address_space *mapping,
						 struct inode *inode,
						 unsigned flags,
						 void **fsdata)
{
	int ret = 0, inline_size;
	struct page *page;

	page = FUNC11(mapping, 0, flags);
	if (!page)
		return -ENOMEM;

	FUNC5(&FUNC0(inode)->xattr_sem);
	if (!FUNC8(inode)) {
		FUNC6(inode, EXT4_STATE_MAY_INLINE_DATA);
		goto out;
	}

	inline_size = FUNC7(inode);

	if (!FUNC1(page)) {
		ret = FUNC9(inode, page);
		if (ret < 0)
			goto out;
	}

	ret = FUNC4(page, 0, inline_size,
				  ext4_da_get_block_prep);
	if (ret) {
		FUNC14(&FUNC0(inode)->xattr_sem);
		FUNC13(page);
		FUNC12(page);
		FUNC10(inode);
		return ret;
	}

	FUNC2(page);
	FUNC3(page);
	FUNC6(inode, EXT4_STATE_MAY_INLINE_DATA);
	*fsdata = (void *)CONVERT_INLINE_DATA;

out:
	FUNC14(&FUNC0(inode)->xattr_sem);
	if (page) {
		FUNC13(page);
		FUNC12(page);
	}
	return ret;
}