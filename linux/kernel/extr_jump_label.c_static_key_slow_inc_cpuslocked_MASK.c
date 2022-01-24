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
 int FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct static_key*) ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 () ; 

void FUNC11(struct static_key *key)
{
	int v, v1;

	FUNC0(key);
	FUNC10();

	/*
	 * Careful if we get concurrent static_key_slow_inc() calls;
	 * later calls must wait for the first one to _finish_ the
	 * jump_label_update() process.  At the same time, however,
	 * the jump_label_update() call below wants to see
	 * static_key_enabled(&key) for jumps to be updated properly.
	 *
	 * So give a special meaning to negative key->enabled: it sends
	 * static_key_slow_inc() down the slow path, and it is non-zero
	 * so it counts as "enabled" in jump_label_update().  Note that
	 * atomic_inc_unless_negative() checks >= 0, so roll our own.
	 */
	for (v = FUNC3(&key->enabled); v > 0; v = v1) {
		v1 = FUNC1(&key->enabled, v, v + 1);
		if (FUNC9(v1 == v))
			return;
	}

	FUNC6();
	if (FUNC3(&key->enabled) == 0) {
		FUNC4(&key->enabled, -1);
		FUNC8(key);
		/*
		 * Ensure that if the above cmpxchg loop observes our positive
		 * value, it must also observe all the text changes.
		 */
		FUNC5(&key->enabled, 1);
	} else {
		FUNC2(&key->enabled);
	}
	FUNC7();
}