#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  list; } ;
struct nfs_open_context {TYPE_1__ lock_context; int /*<<< orphan*/  dentry; } ;
struct nfs_lock_context {int /*<<< orphan*/  list; scalar_t__ open_context; } ;
struct inode {int /*<<< orphan*/  i_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  EBADF ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct nfs_lock_context* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct nfs_lock_context* FUNC1 (struct nfs_open_context*) ; 
 struct inode* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct nfs_open_context*) ; 
 int /*<<< orphan*/  FUNC4 (struct nfs_lock_context*) ; 
 struct nfs_lock_context* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct nfs_lock_context*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

struct nfs_lock_context *FUNC12(struct nfs_open_context *ctx)
{
	struct nfs_lock_context *res, *new = NULL;
	struct inode *inode = FUNC2(ctx->dentry);

	FUNC8();
	res = FUNC1(ctx);
	FUNC9();
	if (res == NULL) {
		new = FUNC5(sizeof(*new), GFP_KERNEL);
		if (new == NULL)
			return FUNC0(-ENOMEM);
		FUNC7(new);
		FUNC10(&inode->i_lock);
		res = FUNC1(ctx);
		if (res == NULL) {
			new->open_context = FUNC3(ctx);
			if (new->open_context) {
				FUNC6(&new->list,
						&ctx->lock_context.list);
				res = new;
				new = NULL;
			} else
				res = FUNC0(-EBADF);
		}
		FUNC11(&inode->i_lock);
		FUNC4(new);
	}
	return res;
}