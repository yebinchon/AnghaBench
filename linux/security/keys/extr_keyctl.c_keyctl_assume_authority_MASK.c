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
struct key {long serial; } ;
typedef  scalar_t__ key_serial_t ;

/* Variables and functions */
 long EINVAL ; 
 scalar_t__ FUNC0 (struct key*) ; 
 long FUNC1 (struct key*) ; 
 struct key* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct key*) ; 
 long FUNC4 (struct key*) ; 

long FUNC5(key_serial_t id)
{
	struct key *authkey;
	long ret;

	/* special key IDs aren't permitted */
	ret = -EINVAL;
	if (id < 0)
		goto error;

	/* we divest ourselves of authority if given an ID of 0 */
	if (id == 0) {
		ret = FUNC4(NULL);
		goto error;
	}

	/* attempt to assume the authority temporarily granted to us whilst we
	 * instantiate the specified key
	 * - the authorisation key must be in the current task's keyrings
	 *   somewhere
	 */
	authkey = FUNC2(id);
	if (FUNC0(authkey)) {
		ret = FUNC1(authkey);
		goto error;
	}

	ret = FUNC4(authkey);
	if (ret == 0)
		ret = authkey->serial;
	FUNC3(authkey);
error:
	return ret;
}