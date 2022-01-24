#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  count; } ;
struct nfs_open_context {int /*<<< orphan*/  mdsthreshold; int /*<<< orphan*/  ll_cred; TYPE_2__* dentry; int /*<<< orphan*/  cred; int /*<<< orphan*/  list; TYPE_1__ lock_context; } ;
struct inode {int /*<<< orphan*/  i_lock; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* close_context ) (struct nfs_open_context*,int) ;} ;
struct TYPE_6__ {struct super_block* d_sb; } ;

/* Variables and functions */
 TYPE_4__* FUNC0 (struct inode*) ; 
 struct inode* FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nfs_open_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rcu_head ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct nfs_open_context*,int) ; 

__attribute__((used)) static void FUNC14(struct nfs_open_context *ctx, int is_sync)
{
	struct inode *inode = FUNC1(ctx->dentry);
	struct super_block *sb = ctx->dentry->d_sb;

	if (!FUNC10(&ctx->lock_context.count))
		return;
	if (!FUNC6(&ctx->list)) {
		FUNC11(&inode->i_lock);
		FUNC5(&ctx->list);
		FUNC12(&inode->i_lock);
	}
	if (inode != NULL)
		FUNC0(inode)->close_context(ctx, is_sync);
	FUNC8(ctx->cred);
	FUNC2(ctx->dentry);
	FUNC7(sb);
	FUNC9(ctx->ll_cred);
	FUNC3(ctx->mdsthreshold);
	FUNC4(ctx, rcu_head);
}