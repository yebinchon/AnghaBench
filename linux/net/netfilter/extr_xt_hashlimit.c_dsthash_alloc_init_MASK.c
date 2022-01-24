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
struct TYPE_2__ {scalar_t__ max; } ;
struct xt_hashlimit_htable {int rnd_initialized; scalar_t__ count; int /*<<< orphan*/  lock; int /*<<< orphan*/ * hash; TYPE_1__ cfg; int /*<<< orphan*/  rnd; } ;
struct dsthash_ent {int /*<<< orphan*/  node; int /*<<< orphan*/  lock; int /*<<< orphan*/  dst; } ;
struct dsthash_dst {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct dsthash_ent* FUNC0 (struct xt_hashlimit_htable*,struct dsthash_dst const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 size_t FUNC2 (struct xt_hashlimit_htable*,struct dsthash_dst const*) ; 
 int /*<<< orphan*/  hashlimit_cachep ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct dsthash_ent* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct dsthash_dst const*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static struct dsthash_ent *
FUNC11(struct xt_hashlimit_htable *ht,
		   const struct dsthash_dst *dst, bool *race)
{
	struct dsthash_ent *ent;

	FUNC7(&ht->lock);

	/* Two or more packets may race to create the same entry in the
	 * hashtable, double check if this packet lost race.
	 */
	ent = FUNC0(ht, dst);
	if (ent != NULL) {
		FUNC9(&ht->lock);
		*race = true;
		return ent;
	}

	/* initialize hash with random val at the time we allocate
	 * the first hashtable entry */
	if (FUNC10(!ht->rnd_initialized)) {
		FUNC1(&ht->rnd, sizeof(ht->rnd));
		ht->rnd_initialized = true;
	}

	if (ht->cfg.max && ht->count >= ht->cfg.max) {
		/* FIXME: do something. question is what.. */
		FUNC6("max count of %u reached\n", ht->cfg.max);
		ent = NULL;
	} else
		ent = FUNC4(hashlimit_cachep, GFP_ATOMIC);
	if (ent) {
		FUNC5(&ent->dst, dst, sizeof(ent->dst));
		FUNC8(&ent->lock);

		FUNC7(&ent->lock);
		FUNC3(&ent->node, &ht->hash[FUNC2(ht, dst)]);
		ht->count++;
	}
	FUNC9(&ht->lock);
	return ent;
}