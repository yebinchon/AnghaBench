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
struct z3fold_pool {int /*<<< orphan*/  unbuddied; int /*<<< orphan*/  lock; } ;
struct z3fold_header {scalar_t__ first_chunks; scalar_t__ last_chunks; scalar_t__ middle_chunks; int /*<<< orphan*/  cpu; int /*<<< orphan*/  buddy; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 struct list_head* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct list_head*) ; 
 int FUNC2 (struct z3fold_header*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC7(struct z3fold_pool *pool,
				struct z3fold_header *zhdr)
{
	if (zhdr->first_chunks == 0 || zhdr->last_chunks == 0 ||
			zhdr->middle_chunks == 0) {
		struct list_head *unbuddied = FUNC0(pool->unbuddied);

		int freechunks = FUNC2(zhdr);
		FUNC5(&pool->lock);
		FUNC1(&zhdr->buddy, &unbuddied[freechunks]);
		FUNC6(&pool->lock);
		zhdr->cpu = FUNC4();
		FUNC3(pool->unbuddied);
	}
}