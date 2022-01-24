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
struct key {int /*<<< orphan*/  sem; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  KEY_FLAG_INVALIDATED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct key*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct key*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct key *key)
{
	FUNC1("%d", FUNC4(key));

	FUNC2(key);

	if (!FUNC6(KEY_FLAG_INVALIDATED, &key->flags)) {
		FUNC0(&key->sem, 1);
		if (!FUNC5(KEY_FLAG_INVALIDATED, &key->flags))
			FUNC3();
		FUNC7(&key->sem);
	}
}