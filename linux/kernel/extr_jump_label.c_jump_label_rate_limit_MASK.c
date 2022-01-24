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
struct static_key_deferred {unsigned long timeout; int /*<<< orphan*/  work; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct static_key_deferred*) ; 
 int /*<<< orphan*/  jump_label_update_timeout ; 

void FUNC2(struct static_key_deferred *key,
		unsigned long rl)
{
	FUNC1(key);
	key->timeout = rl;
	FUNC0(&key->work, jump_label_update_timeout);
}