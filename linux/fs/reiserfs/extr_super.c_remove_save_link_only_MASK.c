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
struct super_block {int dummy; } ;
struct reiserfs_transaction_handle {int dummy; } ;
struct reiserfs_key {int /*<<< orphan*/  k_objectid; } ;

/* Variables and functions */
 int /*<<< orphan*/  JOURNAL_PER_BALANCE_CNT ; 
 int FUNC0 (struct reiserfs_transaction_handle*,struct super_block*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct reiserfs_transaction_handle*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct reiserfs_transaction_handle*,int /*<<< orphan*/ *,struct reiserfs_key*) ; 
 int /*<<< orphan*/  FUNC4 (struct reiserfs_transaction_handle*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct super_block *s,
				 struct reiserfs_key *key, int oid_free)
{
	struct reiserfs_transaction_handle th;
	int err;

	/* we are going to do one balancing */
	err = FUNC0(&th, s, JOURNAL_PER_BALANCE_CNT);
	if (err)
		return err;

	FUNC3(&th, NULL, key);
	if (oid_free)
		/* removals are protected by direct items */
		FUNC4(&th, FUNC2(key->k_objectid));

	return FUNC1(&th);
}