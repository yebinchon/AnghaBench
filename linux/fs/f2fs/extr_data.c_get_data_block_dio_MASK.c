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
struct inode {int /*<<< orphan*/  i_write_hint; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  sector_t ;

/* Variables and functions */
 int /*<<< orphan*/  F2FS_GET_BLOCK_DIO ; 
 int FUNC0 (struct inode*,int /*<<< orphan*/ ,struct buffer_head*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct inode *inode, sector_t iblock,
			struct buffer_head *bh_result, int create)
{
	return FUNC0(inode, iblock, bh_result, create,
				F2FS_GET_BLOCK_DIO, NULL,
				FUNC1(inode->i_write_hint),
				false);
}