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
struct rhashtable {int /*<<< orphan*/  tbl; } ;
struct rhash_lock_head {int dummy; } ;
struct bucket_table {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 int FUNC0 (struct rhashtable*,struct rhash_lock_head**,unsigned int) ; 
 struct rhash_lock_head** FUNC1 (struct bucket_table*,unsigned int) ; 
 struct bucket_table* FUNC2 (int /*<<< orphan*/ ,struct rhashtable*) ; 
 int /*<<< orphan*/  FUNC3 (struct bucket_table*,struct rhash_lock_head**) ; 
 int /*<<< orphan*/  FUNC4 (struct bucket_table*,struct rhash_lock_head**) ; 

__attribute__((used)) static int FUNC5(struct rhashtable *ht,
				    unsigned int old_hash)
{
	struct bucket_table *old_tbl = FUNC2(ht->tbl, ht);
	struct rhash_lock_head **bkt = FUNC1(old_tbl, old_hash);
	int err;

	if (!bkt)
		return 0;
	FUNC3(old_tbl, bkt);

	while (!(err = FUNC0(ht, bkt, old_hash)))
		;

	if (err == -ENOENT)
		err = 0;
	FUNC4(old_tbl, bkt);

	return err;
}