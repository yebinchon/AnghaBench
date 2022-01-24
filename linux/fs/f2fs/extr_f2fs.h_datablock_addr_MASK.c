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
struct inode {int dummy; } ;
struct f2fs_node {int /*<<< orphan*/  i; } ;
typedef  int /*<<< orphan*/  block_t ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 struct f2fs_node* FUNC0 (struct page*) ; 
 int FUNC1 (struct page*) ; 
 int /*<<< orphan*/ * FUNC2 (struct f2fs_node*) ; 
 scalar_t__ FUNC3 (struct inode*) ; 
 int FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline block_t FUNC7(struct inode *inode,
			struct page *node_page, unsigned int offset)
{
	struct f2fs_node *raw_node;
	__le32 *addr_array;
	int base = 0;
	bool is_inode = FUNC1(node_page);

	raw_node = FUNC0(node_page);

	/* from GC path only */
	if (is_inode) {
		if (!inode)
			base = FUNC6(&raw_node->i);
		else if (FUNC3(inode))
			base = FUNC4(inode);
	}

	addr_array = FUNC2(raw_node);
	return FUNC5(addr_array[base + offset]);
}