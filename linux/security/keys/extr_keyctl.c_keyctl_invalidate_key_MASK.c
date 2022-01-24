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
struct key {int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  key_serial_t ;
typedef  int /*<<< orphan*/  key_ref_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 long EPERM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KEY_FLAG_KEEP ; 
 int /*<<< orphan*/  KEY_FLAG_ROOT_CAN_INVAL ; 
 int /*<<< orphan*/  KEY_NEED_SEARCH ; 
 long FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct key*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct key* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

long FUNC10(key_serial_t id)
{
	key_ref_t key_ref;
	struct key *key;
	long ret;

	FUNC3("%d", id);

	key_ref = FUNC8(id, 0, KEY_NEED_SEARCH);
	if (FUNC0(key_ref)) {
		ret = FUNC1(key_ref);

		/* Root is permitted to invalidate certain special keys */
		if (FUNC2(CAP_SYS_ADMIN)) {
			key_ref = FUNC8(id, 0, 0);
			if (FUNC0(key_ref))
				goto error;
			if (FUNC9(KEY_FLAG_ROOT_CAN_INVAL,
				     &FUNC6(key_ref)->flags))
				goto invalidate;
			goto error_put;
		}

		goto error;
	}

invalidate:
	key = FUNC6(key_ref);
	ret = 0;
	if (FUNC9(KEY_FLAG_KEEP, &key->flags))
		ret = -EPERM;
	else
		FUNC4(key);
error_put:
	FUNC5(key_ref);
error:
	FUNC7(" = %ld", ret);
	return ret;
}