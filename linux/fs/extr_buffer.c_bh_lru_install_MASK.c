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
struct buffer_head {int dummy; } ;
struct bh_lru {int /*<<< orphan*/ * bhs; } ;

/* Variables and functions */
 int BH_LRU_SIZE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  bh_lrus ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*,int /*<<< orphan*/ ) ; 
 struct bh_lru* FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct buffer_head *bh)
{
	struct buffer_head *evictee = bh;
	struct bh_lru *b;
	int i;

	FUNC3();
	FUNC0();

	b = FUNC6(&bh_lrus);
	for (i = 0; i < BH_LRU_SIZE; i++) {
		FUNC5(evictee, b->bhs[i]);
		if (evictee == bh) {
			FUNC1();
			return;
		}
	}

	FUNC4(bh);
	FUNC1();
	FUNC2(evictee);
}