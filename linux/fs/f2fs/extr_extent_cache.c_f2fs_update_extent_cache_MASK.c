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
struct dnode_of_data {scalar_t__ data_blkaddr; int /*<<< orphan*/  inode; scalar_t__ ofs_in_node; int /*<<< orphan*/  node_page; } ;
typedef  scalar_t__ pgoff_t ;
typedef  scalar_t__ block_t ;

/* Variables and functions */
 scalar_t__ NEW_ADDR ; 
 scalar_t__ NULL_ADDR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct dnode_of_data *dn)
{
	pgoff_t fofs;
	block_t blkaddr;

	if (!FUNC0(dn->inode))
		return;

	if (dn->data_blkaddr == NEW_ADDR)
		blkaddr = NULL_ADDR;
	else
		blkaddr = dn->data_blkaddr;

	fofs = FUNC1(FUNC3(dn->node_page), dn->inode) +
								dn->ofs_in_node;
	FUNC2(dn->inode, fofs, blkaddr, 1);
}