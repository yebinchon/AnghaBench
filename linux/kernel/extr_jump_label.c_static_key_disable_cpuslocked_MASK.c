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
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct static_key*) ; 
 int /*<<< orphan*/  FUNC7 () ; 

void FUNC8(struct static_key *key)
{
	FUNC0(key);
	FUNC7();

	if (FUNC3(&key->enabled) != 1) {
		FUNC1(FUNC3(&key->enabled) != 0);
		return;
	}

	FUNC4();
	if (FUNC2(&key->enabled, 1, 0))
		FUNC6(key);
	FUNC5();
}