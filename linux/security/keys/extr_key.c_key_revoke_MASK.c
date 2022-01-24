#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ time64_t ;
struct key {scalar_t__ revoked_at; int /*<<< orphan*/  sem; TYPE_1__* type; int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* revoke ) (struct key*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  KEY_FLAG_REVOKED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct key*) ; 
 scalar_t__ key_gc_delay ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct key*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct key *key)
{
	time64_t time;

	FUNC1(key);

	/* make sure no one's trying to change or use the key when we mark it
	 * - we tell lockdep that we might nest because we might be revoking an
	 *   authorisation key whilst holding the sem on a key we've just
	 *   instantiated
	 */
	FUNC0(&key->sem, 1);
	if (!FUNC5(KEY_FLAG_REVOKED, &key->flags) &&
	    key->type->revoke)
		key->type->revoke(key);

	/* set the death time to no more than the expiry time */
	time = FUNC3();
	if (key->revoked_at == 0 || key->revoked_at > time) {
		key->revoked_at = time;
		FUNC2(key->revoked_at + key_gc_delay);
	}

	FUNC6(&key->sem);
}