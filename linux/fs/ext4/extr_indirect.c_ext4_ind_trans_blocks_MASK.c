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
struct inode {int /*<<< orphan*/  i_sb; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

int FUNC2(struct inode *inode, int nrblocks)
{
	/*
	 * With N contiguous data blocks, we need at most
	 * N/EXT4_ADDR_PER_BLOCK(inode->i_sb) + 1 indirect blocks,
	 * 2 dindirect blocks, and 1 tindirect block
	 */
	return FUNC0(nrblocks, FUNC1(inode->i_sb)) + 4;
}