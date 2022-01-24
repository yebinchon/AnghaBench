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
typedef  unsigned int time64_t ;
struct key {unsigned int expiry; int /*<<< orphan*/  sem; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned int key_gc_delay ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 unsigned int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct key *key, unsigned timeout)
{
	time64_t expiry = 0;

	/* make the changes with the locks held to prevent races */
	FUNC0(&key->sem);

	if (timeout > 0)
		expiry = FUNC2() + timeout;

	key->expiry = expiry;
	FUNC1(key->expiry + key_gc_delay);

	FUNC3(&key->sem);
}