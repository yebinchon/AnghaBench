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

/* Variables and functions */
 int AARP_HASH_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  aarp_lock ; 
 int /*<<< orphan*/ * proxies ; 
 int /*<<< orphan*/ * resolved ; 
 int /*<<< orphan*/ * unresolved ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(void)
{
	int ct;

	FUNC1(&aarp_lock);
	for (ct = 0; ct < AARP_HASH_SIZE; ct++) {
		FUNC0(&resolved[ct]);
		FUNC0(&unresolved[ct]);
		FUNC0(&proxies[ct]);
	}
	FUNC2(&aarp_lock);
}