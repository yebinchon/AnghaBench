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
struct lru_cache {int /*<<< orphan*/  lru; int /*<<< orphan*/  free; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC1(struct lru_cache *lc)
{
	if (!FUNC0(&lc->free))
		return 1; /* something on the free list */
	if (!FUNC0(&lc->lru))
		return 1;  /* something to evict */

	return 0;
}