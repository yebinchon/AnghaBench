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
struct inode {int dummy; } ;
struct fsnotify_mark {int dummy; } ;
struct audit_tree {int /*<<< orphan*/  same_root; struct audit_chunk* root; int /*<<< orphan*/  chunks; scalar_t__ goner; } ;
struct audit_chunk {int /*<<< orphan*/  key; int /*<<< orphan*/  trees; TYPE_1__* owners; } ;
struct TYPE_4__ {int /*<<< orphan*/  mark_mutex; } ;
struct TYPE_3__ {unsigned int index; int /*<<< orphan*/  list; struct audit_tree* owner; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENOSPC ; 
 struct audit_chunk* FUNC0 (int) ; 
 struct fsnotify_mark* FUNC1 () ; 
 TYPE_2__* audit_tree_group ; 
 scalar_t__ FUNC2 (struct fsnotify_mark*,struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct fsnotify_mark*) ; 
 int /*<<< orphan*/  FUNC4 (struct fsnotify_mark*) ; 
 int /*<<< orphan*/  FUNC5 (struct fsnotify_mark*) ; 
 int /*<<< orphan*/  FUNC6 (struct audit_tree*) ; 
 int /*<<< orphan*/  hash_lock ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct audit_chunk*) ; 
 int /*<<< orphan*/  FUNC9 (struct audit_chunk*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct fsnotify_mark*,struct audit_chunk*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(struct inode *inode, struct audit_tree *tree)
{
	struct fsnotify_mark *mark;
	struct audit_chunk *chunk = FUNC0(1);

	if (!chunk) {
		FUNC11(&audit_tree_group->mark_mutex);
		return -ENOMEM;
	}

	mark = FUNC1();
	if (!mark) {
		FUNC11(&audit_tree_group->mark_mutex);
		FUNC9(chunk);
		return -ENOMEM;
	}

	if (FUNC2(mark, inode, 0)) {
		FUNC11(&audit_tree_group->mark_mutex);
		FUNC5(mark);
		FUNC9(chunk);
		return -ENOSPC;
	}

	FUNC13(&hash_lock);
	if (tree->goner) {
		FUNC14(&hash_lock);
		FUNC3(mark);
		FUNC11(&audit_tree_group->mark_mutex);
		FUNC4(mark);
		FUNC5(mark);
		FUNC9(chunk);
		return 0;
	}
	FUNC12(mark, chunk);
	chunk->owners[0].index = (1U << 31);
	chunk->owners[0].owner = tree;
	FUNC6(tree);
	FUNC10(&chunk->owners[0].list, &tree->chunks);
	if (!tree->root) {
		tree->root = chunk;
		FUNC10(&tree->same_root, &chunk->trees);
	}
	chunk->key = FUNC7(inode);
	/*
	 * Inserting into the hash table has to go last as once we do that RCU
	 * readers can see the chunk.
	 */
	FUNC8(chunk);
	FUNC14(&hash_lock);
	FUNC11(&audit_tree_group->mark_mutex);
	/*
	 * Drop our initial reference. When mark we point to is getting freed,
	 * we get notification through ->freeing_mark callback and cleanup
	 * chunk pointing to this mark.
	 */
	FUNC5(mark);
	return 0;
}