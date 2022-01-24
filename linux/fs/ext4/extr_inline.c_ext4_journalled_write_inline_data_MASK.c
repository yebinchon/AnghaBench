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
struct ext4_iloc {struct buffer_head* bh; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct inode*,struct ext4_iloc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,struct ext4_iloc*,void*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,int*) ; 
 void* FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 

struct buffer_head *
FUNC7(struct inode *inode,
				  unsigned len,
				  struct page *page)
{
	int ret, no_expand;
	void *kaddr;
	struct ext4_iloc iloc;

	ret = FUNC0(inode, &iloc);
	if (ret) {
		FUNC1(inode->i_sb, ret);
		return NULL;
	}

	FUNC3(inode, &no_expand);
	kaddr = FUNC5(page);
	FUNC2(inode, &iloc, kaddr, 0, len);
	FUNC6(kaddr);
	FUNC4(inode, &no_expand);

	return iloc.bh;
}