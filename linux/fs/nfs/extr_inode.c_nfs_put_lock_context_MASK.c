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
struct nfs_open_context {int /*<<< orphan*/  dentry; } ;
struct nfs_lock_context {int /*<<< orphan*/  list; int /*<<< orphan*/  count; struct nfs_open_context* open_context; } ;
struct inode {int /*<<< orphan*/  i_lock; } ;

/* Variables and functions */
 struct inode* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nfs_lock_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct nfs_open_context*) ; 
 int /*<<< orphan*/  rcu_head ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct nfs_lock_context *l_ctx)
{
	struct nfs_open_context *ctx = l_ctx->open_context;
	struct inode *inode = FUNC0(ctx->dentry);

	if (!FUNC4(&l_ctx->count, &inode->i_lock))
		return;
	FUNC2(&l_ctx->list);
	FUNC5(&inode->i_lock);
	FUNC3(ctx);
	FUNC1(l_ctx, rcu_head);
}