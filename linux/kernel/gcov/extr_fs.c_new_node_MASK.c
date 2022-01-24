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
struct gcov_node {int /*<<< orphan*/  all; int /*<<< orphan*/  children; int /*<<< orphan*/  list; int /*<<< orphan*/  dentry; int /*<<< orphan*/  name; int /*<<< orphan*/  loaded_info; } ;
struct gcov_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct gcov_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  all_head ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct gcov_node*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gcov_data_fops ; 
 int /*<<< orphan*/  FUNC4 (struct gcov_node*,struct gcov_info*,char const*,struct gcov_node*) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct gcov_node*) ; 
 struct gcov_node* FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 scalar_t__ FUNC10 (char const*) ; 

__attribute__((used)) static struct gcov_node *FUNC11(struct gcov_node *parent,
				  struct gcov_info *info, const char *name)
{
	struct gcov_node *node;

	node = FUNC7(sizeof(struct gcov_node) + FUNC10(name) + 1, GFP_KERNEL);
	if (!node)
		goto err_nomem;
	if (info) {
		node->loaded_info = FUNC5(1, sizeof(struct gcov_info *),
					   GFP_KERNEL);
		if (!node->loaded_info)
			goto err_nomem;
	}
	FUNC4(node, info, name, parent);
	/* Differentiate between gcov data file nodes and directory nodes. */
	if (info) {
		node->dentry = FUNC2(FUNC3(node->name), 0600,
					parent->dentry, node, &gcov_data_fops);
	} else
		node->dentry = FUNC1(node->name, parent->dentry);
	if (info)
		FUNC0(node, parent->dentry);
	FUNC8(&node->list, &parent->children);
	FUNC8(&node->all, &all_head);

	return node;

err_nomem:
	FUNC6(node);
	FUNC9("out of memory\n");
	return NULL;
}