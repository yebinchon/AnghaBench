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
typedef  int /*<<< orphan*/  u32 ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dentry*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  inode_setsecctx ; 

int FUNC1(struct dentry *dentry, void *ctx, u32 ctxlen)
{
	return FUNC0(inode_setsecctx, 0, dentry, ctx, ctxlen);
}