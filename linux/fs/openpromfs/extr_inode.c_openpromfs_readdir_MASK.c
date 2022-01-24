#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct property {char* name; struct property* next; int /*<<< orphan*/  unique_id; } ;
struct TYPE_3__ {struct device_node* node; } ;
struct op_inode_info {TYPE_1__ u; } ;
struct inode {int /*<<< orphan*/  i_ino; } ;
struct file {int dummy; } ;
struct dir_context {int pos; } ;
struct device_node {struct property* properties; struct device_node* sibling; int /*<<< orphan*/  unique_id; int /*<<< orphan*/  full_name; struct device_node* child; TYPE_2__* parent; } ;
struct TYPE_4__ {int /*<<< orphan*/  unique_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  DT_DIR ; 
 int /*<<< orphan*/  DT_REG ; 
 int /*<<< orphan*/  OPENPROM_ROOT_INO ; 
 struct op_inode_info* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct dir_context*,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct inode* FUNC2 (struct file*) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  op_mutex ; 
 int FUNC6 (char*) ; 

__attribute__((used)) static int FUNC7(struct file *file, struct dir_context *ctx)
{
	struct inode *inode = FUNC2(file);
	struct op_inode_info *oi = FUNC0(inode);
	struct device_node *dp = oi->u.node;
	struct device_node *child;
	struct property *prop;
	int i;

	FUNC4(&op_mutex);
	
	if (ctx->pos == 0) {
		if (!FUNC1(ctx, ".", 1, inode->i_ino, DT_DIR))
			goto out;
		ctx->pos = 1;
	}
	if (ctx->pos == 1) {
		if (!FUNC1(ctx, "..", 2,
			    (dp->parent == NULL ?
			     OPENPROM_ROOT_INO :
			     dp->parent->unique_id), DT_DIR))
			goto out;
		ctx->pos = 2;
	}
	i = ctx->pos - 2;

	/* First, the children nodes as directories.  */
	child = dp->child;
	while (i && child) {
		child = child->sibling;
		i--;
	}
	while (child) {
		if (!FUNC1(ctx,
			    FUNC3(child->full_name),
			    FUNC6(FUNC3(child->full_name)),
			    child->unique_id, DT_DIR))
			goto out;

		ctx->pos++;
		child = child->sibling;
	}

	/* Next, the properties as files.  */
	prop = dp->properties;
	while (i && prop) {
		prop = prop->next;
		i--;
	}
	while (prop) {
		if (!FUNC1(ctx, prop->name, FUNC6(prop->name),
			    prop->unique_id, DT_REG))
			goto out;

		ctx->pos++;
		prop = prop->next;
	}

out:
	FUNC5(&op_mutex);
	return 0;
}