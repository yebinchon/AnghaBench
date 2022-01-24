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
struct f2fs_node {int dummy; } ;
struct dnode_of_data {int ofs_in_node; int /*<<< orphan*/  data_blkaddr; int /*<<< orphan*/  inode; int /*<<< orphan*/  node_page; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 struct f2fs_node* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (struct f2fs_node*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct dnode_of_data *dn)
{
	struct f2fs_node *rn = FUNC0(dn->node_page);
	__le32 *addr_array;
	int base = 0;

	if (FUNC1(dn->node_page) && FUNC4(dn->inode))
		base = FUNC5(dn->inode);

	/* Get physical address of data block */
	addr_array = FUNC2(rn);
	addr_array[base + dn->ofs_in_node] = FUNC3(dn->data_blkaddr);
}