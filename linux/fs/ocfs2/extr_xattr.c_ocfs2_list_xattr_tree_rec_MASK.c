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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  ocfs2_list_xattr_bucket ; 

__attribute__((used)) static int FUNC1(struct inode *inode,
				     struct buffer_head *root_bh,
				     u64 blkno, u32 cpos, u32 len, void *para)
{
	return FUNC0(inode, blkno, len,
					   ocfs2_list_xattr_bucket, para);
}