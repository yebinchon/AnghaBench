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
struct page {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct ext4_iloc {int /*<<< orphan*/  bh; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct inode*,struct ext4_iloc*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,struct ext4_iloc*,void*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,int*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*,int*) ; 
 void* FUNC11 (struct page*) ; 
 int /*<<< orphan*/  FUNC12 (void*) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*) ; 
 scalar_t__ FUNC14 (int) ; 

int FUNC15(struct inode *inode, loff_t pos, unsigned len,
			       unsigned copied, struct page *page)
{
	int ret, no_expand;
	void *kaddr;
	struct ext4_iloc iloc;

	if (FUNC14(copied < len)) {
		if (!FUNC2(page)) {
			copied = 0;
			goto out;
		}
	}

	ret = FUNC5(inode, &iloc);
	if (ret) {
		FUNC7(inode->i_sb, ret);
		copied = 0;
		goto out;
	}

	FUNC9(inode, &no_expand);
	FUNC0(!FUNC6(inode));

	kaddr = FUNC11(page);
	FUNC8(inode, &iloc, kaddr, pos, len);
	FUNC12(kaddr);
	FUNC3(page);
	/* clear page dirty so that writepages wouldn't work for us. */
	FUNC1(page);

	FUNC10(inode, &no_expand);
	FUNC4(iloc.bh);
	FUNC13(inode);
out:
	return copied;
}