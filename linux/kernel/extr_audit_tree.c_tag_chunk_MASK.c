#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct node {int index; int /*<<< orphan*/  list; struct audit_tree* owner; } ;
struct inode {int /*<<< orphan*/  i_fsnotify_marks; } ;
struct fsnotify_mark {int dummy; } ;
struct audit_tree {int /*<<< orphan*/  same_root; struct audit_chunk* root; int /*<<< orphan*/  chunks; scalar_t__ goner; } ;
struct audit_chunk {int count; int /*<<< orphan*/  trees; struct node* owners; } ;
struct TYPE_3__ {int /*<<< orphan*/  mark_mutex; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct audit_chunk* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct audit_chunk*) ; 
 TYPE_1__* audit_tree_group ; 
 int FUNC2 (struct inode*,struct audit_tree*) ; 
 struct fsnotify_mark* FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct fsnotify_mark*) ; 
 int /*<<< orphan*/  FUNC5 (struct audit_tree*) ; 
 int /*<<< orphan*/  hash_lock ; 
 int /*<<< orphan*/  FUNC6 (struct audit_chunk*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct audit_chunk* FUNC8 (struct fsnotify_mark*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct audit_chunk*,struct audit_chunk*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct inode *inode, struct audit_tree *tree)
{
	struct fsnotify_mark *mark;
	struct audit_chunk *chunk, *old;
	struct node *p;
	int n;

	FUNC9(&audit_tree_group->mark_mutex);
	mark = FUNC3(&inode->i_fsnotify_marks, audit_tree_group);
	if (!mark)
		return FUNC2(inode, tree);

	/*
	 * Found mark is guaranteed to be attached and mark_mutex protects mark
	 * from getting detached and thus it makes sure there is chunk attached
	 * to the mark.
	 */
	/* are we already there? */
	FUNC12(&hash_lock);
	old = FUNC8(mark);
	for (n = 0; n < old->count; n++) {
		if (old->owners[n].owner == tree) {
			FUNC13(&hash_lock);
			FUNC10(&audit_tree_group->mark_mutex);
			FUNC4(mark);
			return 0;
		}
	}
	FUNC13(&hash_lock);

	chunk = FUNC0(old->count + 1);
	if (!chunk) {
		FUNC10(&audit_tree_group->mark_mutex);
		FUNC4(mark);
		return -ENOMEM;
	}

	FUNC12(&hash_lock);
	if (tree->goner) {
		FUNC13(&hash_lock);
		FUNC10(&audit_tree_group->mark_mutex);
		FUNC4(mark);
		FUNC6(chunk);
		return 0;
	}
	p = &chunk->owners[chunk->count - 1];
	p->index = (chunk->count - 1) | (1U<<31);
	p->owner = tree;
	FUNC5(tree);
	FUNC7(&p->list, &tree->chunks);
	if (!tree->root) {
		tree->root = chunk;
		FUNC7(&tree->same_root, &chunk->trees);
	}
	/*
	 * This has to go last when updating chunk as once replace_chunk() is
	 * called, new RCU readers can see the new chunk.
	 */
	FUNC11(chunk, old);
	FUNC13(&hash_lock);
	FUNC10(&audit_tree_group->mark_mutex);
	FUNC4(mark); /* pair to fsnotify_find_mark */
	FUNC1(old);

	return 0;
}