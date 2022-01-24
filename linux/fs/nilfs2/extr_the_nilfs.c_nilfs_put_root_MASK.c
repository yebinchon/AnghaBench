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
struct the_nilfs {int /*<<< orphan*/  ns_cptree_lock; int /*<<< orphan*/  ns_cptree; } ;
struct nilfs_root {int /*<<< orphan*/  ifile; int /*<<< orphan*/  rb_node; struct the_nilfs* nilfs; int /*<<< orphan*/  count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nilfs_root*) ; 
 int /*<<< orphan*/  FUNC2 (struct nilfs_root*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct nilfs_root *root)
{
	if (FUNC4(&root->count)) {
		struct the_nilfs *nilfs = root->nilfs;

		FUNC2(root);

		FUNC5(&nilfs->ns_cptree_lock);
		FUNC3(&root->rb_node, &nilfs->ns_cptree);
		FUNC6(&nilfs->ns_cptree_lock);
		FUNC0(root->ifile);

		FUNC1(root);
	}
}