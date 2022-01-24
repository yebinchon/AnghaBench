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
struct neighbour {int hash_shift; int /*<<< orphan*/  rcu; int /*<<< orphan*/ * hash_buckets; int /*<<< orphan*/  next; int /*<<< orphan*/  hash_rnd; int /*<<< orphan*/  dev; int /*<<< orphan*/  primary_key; } ;
struct neigh_table {unsigned int (* hash ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  nht; int /*<<< orphan*/  lock; } ;
struct neigh_hash_table {int hash_shift; int /*<<< orphan*/  rcu; int /*<<< orphan*/ * hash_buckets; int /*<<< orphan*/  next; int /*<<< orphan*/  hash_rnd; int /*<<< orphan*/  dev; int /*<<< orphan*/  primary_key; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct neigh_table*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hash_grows ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct neighbour* FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  neigh_hash_free_rcu ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct neighbour*) ; 
 struct neighbour* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct neigh_hash_table *FUNC7(struct neigh_table *tbl,
						unsigned long new_shift)
{
	unsigned int i, hash;
	struct neigh_hash_table *new_nht, *old_nht;

	FUNC0(tbl, hash_grows);

	old_nht = FUNC5(tbl->nht,
					    FUNC2(&tbl->lock));
	new_nht = FUNC3(new_shift);
	if (!new_nht)
		return old_nht;

	for (i = 0; i < (1 << old_nht->hash_shift); i++) {
		struct neighbour *n, *next;

		for (n = FUNC5(old_nht->hash_buckets[i],
						   FUNC2(&tbl->lock));
		     n != NULL;
		     n = next) {
			hash = tbl->hash(n->primary_key, n->dev,
					 new_nht->hash_rnd);

			hash >>= (32 - new_nht->hash_shift);
			next = FUNC5(n->next,
						FUNC2(&tbl->lock));

			FUNC4(n->next,
					   FUNC5(
						new_nht->hash_buckets[hash],
						FUNC2(&tbl->lock)));
			FUNC4(new_nht->hash_buckets[hash], n);
		}
	}

	FUNC4(tbl->nht, new_nht);
	FUNC1(&old_nht->rcu, neigh_hash_free_rcu);
	return new_nht;
}