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
struct inode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  UBIFS_XATTR_NAME_ENCRYPTION_CONTEXT ; 
 int FUNC0 (struct inode*,int /*<<< orphan*/ ,void const*,size_t,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC1(struct inode *inode, const void *ctx,
				   size_t len, void *fs_data)
{
	/*
	 * Creating an encryption context is done unlocked since we
	 * operate on a new inode which is not visible to other users
	 * at this point. So, no need to check whether inode is locked.
	 */
	return FUNC0(inode, UBIFS_XATTR_NAME_ENCRYPTION_CONTEXT,
			       ctx, len, 0, false);
}