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
struct static_key {int /*<<< orphan*/  enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct static_key*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct static_key*) ; 
 int /*<<< orphan*/  FUNC8 () ; 

void FUNC9(struct static_key *key)
{
	FUNC0(key);
	FUNC8();

	if (FUNC2(&key->enabled) > 0) {
		FUNC1(FUNC2(&key->enabled) != 1);
		return;
	}

	FUNC5();
	if (FUNC2(&key->enabled) == 0) {
		FUNC3(&key->enabled, -1);
		FUNC7(key);
		/*
		 * See static_key_slow_inc().
		 */
		FUNC4(&key->enabled, 1);
	}
	FUNC6();
}