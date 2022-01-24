#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct list_head {int dummy; } ;
struct TYPE_5__ {struct dentry* dentry; } ;
struct file {struct dentry* private_data; TYPE_1__ f_path; } ;
struct dir_context {int pos; } ;
struct TYPE_6__ {int /*<<< orphan*/  len; int /*<<< orphan*/  name; } ;
struct dentry {int /*<<< orphan*/  d_lock; struct list_head d_child; TYPE_2__ d_name; struct list_head d_subdirs; } ;
struct TYPE_7__ {int /*<<< orphan*/  i_ino; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (struct dir_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct file*,struct dir_context*) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC6 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC7 (struct list_head*,struct list_head*) ; 
 struct dentry* FUNC8 (struct dentry*,struct list_head*,int,struct dentry*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

int FUNC11(struct file *file, struct dir_context *ctx)
{
	struct dentry *dentry = file->f_path.dentry;
	struct dentry *cursor = file->private_data;
	struct list_head *anchor = &dentry->d_subdirs;
	struct dentry *next = NULL;
	struct list_head *p;

	if (!FUNC2(file, ctx))
		return 0;

	if (ctx->pos == 2)
		p = anchor;
	else if (!FUNC6(&cursor->d_child))
		p = &cursor->d_child;
	else
		return 0;

	while ((next = FUNC8(cursor, p, 1, next)) != NULL) {
		if (!FUNC1(ctx, next->d_name.name, next->d_name.len,
			      FUNC0(next)->i_ino, FUNC4(FUNC0(next))))
			break;
		ctx->pos++;
		p = &next->d_child;
	}
	FUNC9(&dentry->d_lock);
	if (next)
		FUNC7(&cursor->d_child, &next->d_child);
	else
		FUNC5(&cursor->d_child);
	FUNC10(&dentry->d_lock);
	FUNC3(next);

	return 0;
}