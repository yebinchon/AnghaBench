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
struct rhashtable {int /*<<< orphan*/  run_work; int /*<<< orphan*/  tbl; } ;
struct bucket_table {unsigned int size; int /*<<< orphan*/  future_tbl; } ;

/* Variables and functions */
 int EBUSY ; 
 int EEXIST ; 
 int ENOMEM ; 
 int GFP_ATOMIC ; 
 int __GFP_NOWARN ; 
 struct bucket_table* FUNC0 (struct rhashtable*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bucket_table*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct rhashtable*,struct bucket_table*,struct bucket_table*) ; 
 struct bucket_table* FUNC5 (int /*<<< orphan*/ ,struct rhashtable*) ; 
 scalar_t__ FUNC6 (struct rhashtable*,struct bucket_table*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct rhashtable *ht,
				    struct bucket_table *tbl)
{
	struct bucket_table *old_tbl;
	struct bucket_table *new_tbl;
	unsigned int size;
	int err;

	old_tbl = FUNC5(ht->tbl, ht);

	size = tbl->size;

	err = -EBUSY;

	if (FUNC6(ht, tbl))
		size *= 2;
	/* Do not schedule more than one rehash */
	else if (old_tbl != tbl)
		goto fail;

	err = -ENOMEM;

	new_tbl = FUNC0(ht, size, GFP_ATOMIC | __GFP_NOWARN);
	if (new_tbl == NULL)
		goto fail;

	err = FUNC4(ht, tbl, new_tbl);
	if (err) {
		FUNC1(new_tbl);
		if (err == -EEXIST)
			err = 0;
	} else
		FUNC7(&ht->run_work);

	return err;

fail:
	/* Do not fail the insert if someone else did a rehash. */
	if (FUNC2(FUNC3(tbl->future_tbl)))
		return 0;

	/* Schedule async rehash to retry allocation in process context. */
	if (err == -ENOMEM)
		FUNC7(&ht->run_work);

	return err;
}