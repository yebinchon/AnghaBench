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
struct rhashtable {int /*<<< orphan*/  mutex; int /*<<< orphan*/  tbl; int /*<<< orphan*/  run_work; } ;
struct rhash_head {unsigned int size; int /*<<< orphan*/  future_tbl; int /*<<< orphan*/  next; } ;
struct bucket_table {unsigned int size; int /*<<< orphan*/  future_tbl; int /*<<< orphan*/  next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rhash_head*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct rhashtable*,struct rhash_head*,void (*) (void*,void*),void*) ; 
 int /*<<< orphan*/  FUNC6 (struct rhash_head*,unsigned int) ; 
 struct rhash_head* FUNC7 (int /*<<< orphan*/ ,struct rhashtable*) ; 
 int /*<<< orphan*/  FUNC8 (struct rhash_head*) ; 
 struct rhash_head* FUNC9 (int /*<<< orphan*/ ) ; 

void FUNC10(struct rhashtable *ht,
				 void (*free_fn)(void *ptr, void *arg),
				 void *arg)
{
	struct bucket_table *tbl, *next_tbl;
	unsigned int i;

	FUNC1(&ht->run_work);

	FUNC3(&ht->mutex);
	tbl = FUNC7(ht->tbl, ht);
restart:
	if (free_fn) {
		for (i = 0; i < tbl->size; i++) {
			struct rhash_head *pos, *next;

			FUNC2();
			for (pos = FUNC9(FUNC6(tbl, i)),
			     next = !FUNC8(pos) ?
					FUNC7(pos->next, ht) : NULL;
			     !FUNC8(pos);
			     pos = next,
			     next = !FUNC8(pos) ?
					FUNC7(pos->next, ht) : NULL)
				FUNC5(ht, pos, free_fn, arg);
		}
	}

	next_tbl = FUNC7(tbl->future_tbl, ht);
	FUNC0(tbl);
	if (next_tbl) {
		tbl = next_tbl;
		goto restart;
	}
	FUNC4(&ht->mutex);
}