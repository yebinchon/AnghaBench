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
struct inode {struct file_lock_context* i_flctx; } ;
struct file_lock_context {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  flctx_cache ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct file_lock_context*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (struct file_lock_context*) ; 

void
FUNC3(struct inode *inode)
{
	struct file_lock_context *ctx = inode->i_flctx;

	if (FUNC2(ctx)) {
		FUNC1(inode);
		FUNC0(flctx_cache, ctx);
	}
}