#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  ino; } ;
struct kernfs_node {char* name; int /*<<< orphan*/  hash; TYPE_2__ id; } ;
struct TYPE_4__ {struct dentry* dentry; } ;
struct file {struct kernfs_node* private_data; TYPE_1__ f_path; } ;
struct dir_context {int /*<<< orphan*/  pos; } ;
struct dentry {int /*<<< orphan*/  d_sb; } ;
typedef  int /*<<< orphan*/  ino_t ;
struct TYPE_6__ {void* ns; } ;

/* Variables and functions */
 int /*<<< orphan*/  INT_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct dir_context*,char const*,int,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct file*,struct dir_context*) ; 
 unsigned int FUNC2 (struct kernfs_node*) ; 
 struct kernfs_node* FUNC3 (struct dentry*) ; 
 struct kernfs_node* FUNC4 (void const*,struct kernfs_node*,int /*<<< orphan*/ ,struct kernfs_node*) ; 
 struct kernfs_node* FUNC5 (void const*,struct kernfs_node*,int /*<<< orphan*/ ,struct kernfs_node*) ; 
 int /*<<< orphan*/  FUNC6 (struct kernfs_node*) ; 
 TYPE_3__* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kernfs_mutex ; 
 scalar_t__ FUNC8 (struct kernfs_node*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (char const*) ; 

__attribute__((used)) static int FUNC12(struct file *file, struct dir_context *ctx)
{
	struct dentry *dentry = file->f_path.dentry;
	struct kernfs_node *parent = FUNC3(dentry);
	struct kernfs_node *pos = file->private_data;
	const void *ns = NULL;

	if (!FUNC1(file, ctx))
		return 0;
	FUNC9(&kernfs_mutex);

	if (FUNC8(parent))
		ns = FUNC7(dentry->d_sb)->ns;

	for (pos = FUNC5(ns, parent, ctx->pos, pos);
	     pos;
	     pos = FUNC4(ns, parent, ctx->pos, pos)) {
		const char *name = pos->name;
		unsigned int type = FUNC2(pos);
		int len = FUNC11(name);
		ino_t ino = pos->id.ino;

		ctx->pos = pos->hash;
		file->private_data = pos;
		FUNC6(pos);

		FUNC10(&kernfs_mutex);
		if (!FUNC0(ctx, name, len, ino, type))
			return 0;
		FUNC9(&kernfs_mutex);
	}
	FUNC10(&kernfs_mutex);
	file->private_data = NULL;
	ctx->pos = INT_MAX;
	return 0;
}