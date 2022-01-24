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
struct gcov_node {struct gcov_node* parent; } ;
struct gcov_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct gcov_info*) ; 
 struct gcov_node* FUNC1 (struct gcov_node*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct gcov_node* FUNC4 (struct gcov_node*,struct gcov_info*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct gcov_node*) ; 
 struct gcov_node root_node ; 
 char* FUNC6 (char*,char) ; 
 scalar_t__ FUNC7 (char*,char*) ; 

__attribute__((used)) static void FUNC8(struct gcov_info *info)
{
	char *filename;
	char *curr;
	char *next;
	struct gcov_node *parent;
	struct gcov_node *node;

	filename = FUNC3(FUNC0(info), GFP_KERNEL);
	if (!filename)
		return;
	parent = &root_node;
	/* Create directory nodes along the path. */
	for (curr = filename; (next = FUNC6(curr, '/')); curr = next + 1) {
		if (curr == next)
			continue;
		*next = 0;
		if (FUNC7(curr, ".") == 0)
			continue;
		if (FUNC7(curr, "..") == 0) {
			if (!parent->parent)
				goto err_remove;
			parent = parent->parent;
			continue;
		}
		node = FUNC1(parent, curr);
		if (!node) {
			node = FUNC4(parent, NULL, curr);
			if (!node)
				goto err_remove;
		}
		parent = node;
	}
	/* Create file node. */
	node = FUNC4(parent, info, curr);
	if (!node)
		goto err_remove;
out:
	FUNC2(filename);
	return;

err_remove:
	FUNC5(parent);
	goto out;
}