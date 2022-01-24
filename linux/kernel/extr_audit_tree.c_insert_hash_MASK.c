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
struct list_head {int dummy; } ;
struct audit_chunk {int /*<<< orphan*/  hash; int /*<<< orphan*/  key; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct list_head* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void FUNC4(struct audit_chunk *chunk)
{
	struct list_head *list;

	/*
	 * Make sure chunk is fully initialized before making it visible in the
	 * hash. Pairs with a data dependency barrier in READ_ONCE() in
	 * audit_tree_lookup().
	 */
	FUNC3();
	FUNC0(!chunk->key);
	list = FUNC1(chunk->key);
	FUNC2(&chunk->hash, list);
}