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
typedef  int /*<<< orphan*/  key_serial_t ;
typedef  int /*<<< orphan*/  key_ref_t ;

/* Variables and functions */
 long EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int KEYCTL_MOVE_EXCL ; 
 int /*<<< orphan*/  KEY_LOOKUP_CREATE ; 
 int /*<<< orphan*/  KEY_NEED_LINK ; 
 int /*<<< orphan*/  KEY_NEED_WRITE ; 
 long FUNC1 (int /*<<< orphan*/ ) ; 
 long FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

long FUNC6(key_serial_t id, key_serial_t from_ringid,
			 key_serial_t to_ringid, unsigned int flags)
{
	key_ref_t key_ref, from_ref, to_ref;
	long ret;

	if (flags & ~KEYCTL_MOVE_EXCL)
		return -EINVAL;

	key_ref = FUNC5(id, KEY_LOOKUP_CREATE, KEY_NEED_LINK);
	if (FUNC0(key_ref))
		return FUNC1(key_ref);

	from_ref = FUNC5(from_ringid, 0, KEY_NEED_WRITE);
	if (FUNC0(from_ref)) {
		ret = FUNC1(from_ref);
		goto error2;
	}

	to_ref = FUNC5(to_ringid, KEY_LOOKUP_CREATE, KEY_NEED_WRITE);
	if (FUNC0(to_ref)) {
		ret = FUNC1(to_ref);
		goto error3;
	}

	ret = FUNC2(FUNC4(key_ref), FUNC4(from_ref),
		       FUNC4(to_ref), flags);

	FUNC3(to_ref);
error3:
	FUNC3(from_ref);
error2:
	FUNC3(key_ref);
	return ret;
}