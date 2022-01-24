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
struct fsnotify_mark {int flags; } ;
struct audit_chunk {int /*<<< orphan*/  hash; int /*<<< orphan*/  trees; } ;
struct TYPE_2__ {int /*<<< orphan*/  mark_mutex; } ;

/* Variables and functions */
 int FSNOTIFY_MARK_FLAG_ATTACHED ; 
 struct audit_chunk* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct audit_chunk*) ; 
 TYPE_1__* audit_tree_group ; 
 int FUNC2 (struct audit_chunk*) ; 
 int /*<<< orphan*/  FUNC3 (struct fsnotify_mark*) ; 
 int /*<<< orphan*/  FUNC4 (struct fsnotify_mark*) ; 
 int /*<<< orphan*/  hash_lock ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct audit_chunk* FUNC7 (struct fsnotify_mark*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct audit_chunk*,struct audit_chunk*) ; 
 int /*<<< orphan*/  FUNC11 (struct fsnotify_mark*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC14(struct audit_chunk *chunk, struct fsnotify_mark *mark)
{
	struct audit_chunk *new;
	int size;

	FUNC8(&audit_tree_group->mark_mutex);
	/*
	 * mark_mutex stabilizes chunk attached to the mark so we can check
	 * whether it didn't change while we've dropped hash_lock.
	 */
	if (!(mark->flags & FSNOTIFY_MARK_FLAG_ATTACHED) ||
	    FUNC7(mark) != chunk)
		goto out_mutex;

	size = FUNC2(chunk);
	if (!size) {
		FUNC12(&hash_lock);
		FUNC5(&chunk->trees);
		FUNC6(&chunk->hash);
		FUNC11(mark, NULL);
		FUNC13(&hash_lock);
		FUNC3(mark);
		FUNC9(&audit_tree_group->mark_mutex);
		FUNC1(chunk);
		FUNC4(mark);
		return;
	}

	new = FUNC0(size);
	if (!new)
		goto out_mutex;

	FUNC12(&hash_lock);
	/*
	 * This has to go last when updating chunk as once replace_chunk() is
	 * called, new RCU readers can see the new chunk.
	 */
	FUNC10(new, chunk);
	FUNC13(&hash_lock);
	FUNC9(&audit_tree_group->mark_mutex);
	FUNC1(chunk);
	return;

out_mutex:
	FUNC9(&audit_tree_group->mark_mutex);
}