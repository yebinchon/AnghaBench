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
struct lru_cache {int /*<<< orphan*/  lc_cache; int /*<<< orphan*/  element_off; void** lc_element; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static void FUNC2(struct lru_cache *lc, unsigned i)
{
	void *p = lc->lc_element[i];
	FUNC0(!p);
	if (p) {
		p -= lc->element_off;
		FUNC1(lc->lc_cache, p);
	}
}